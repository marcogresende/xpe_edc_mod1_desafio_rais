resource "aws_glue_crawler" "glue_crawler" {
  database_name = "xpe_du"
  name          = "xpe_rais_processing_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://xpe-marco-rais-prod-processing-zone-377000241855/rais/"
  }

  tags = local.common_tags

}