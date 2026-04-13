# me Prévenir si mon serveur EC2 est trop chargé en CPU + 80%
resource "aws_cloudwatch_metric_alarm" "foobar" {
  alarm_name                = "xfusion-alarm"
  evaluation_periods        = 1
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = 300
  statistic                 = "Average"
  threshold                 = 80
  comparison_operator = "GreaterThanThreshold"
}