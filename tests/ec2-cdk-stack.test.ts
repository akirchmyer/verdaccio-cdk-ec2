import * as CdkEc2KeyPair from 'cdk-ec2-key-pair';
import { Ec2CdkStack } from '../lib/ec2-cdk-stack';

jest.mock('cdk-ec2-key-pair', () => ({
  KeyPair: jest.fn().mockReturnValue('the key')
}))

describe('Ec2CdkStack tests', () => {
    test('getKey() creates new key pair', () => {
        expect(Ec2CdkStack.getKey()).toEqual('the key');
    });
});