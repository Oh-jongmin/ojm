resource "aws_iam_role" "eksctl_mgmt_role" {
  name = "eksctl-mgmt-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::560971842042:user/ojm"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "eksctl_mgmt_policy" {
  name        = "eksctl-mgmt-policy"
  description = "Policy for mgmt server to access EKS cluster"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "eks:DescribeCluster",
          "eks:ListClusters",
          "eks:AccessKubernetesApi"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "ssm:DescribeParameters",
          "ssm:GetParameter",
          "ssm:GetParameters"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_mgmt_policy" {
  role       = aws_iam_role.eksctl_mgmt_role.name
  policy_arn = aws_iam_policy.eksctl_mgmt_policy.arn
}
