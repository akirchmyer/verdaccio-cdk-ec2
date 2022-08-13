import * as cdk from "aws-cdk-lib";
import * as path from "path";
import { Ec2CdkStack } from "simple-cdk-ec2";

const app = new cdk.App();
const userDataPath = path.join(__dirname, "../src/config.sh");

new Ec2CdkStack(
  app,
  "VerdaccioEc2CdkStack",
  {},
  {
    userDataPath,
  }
);
