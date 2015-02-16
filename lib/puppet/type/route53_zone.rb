Puppet::Type.newtype(:route53_zone) do
  @doc = 'Type representing an Route53 DNS zone.'

  ensurable

  newparam(:name, namevar: true) do
    desc 'The name of DNS zone group.'
    validate do |value|
      fail Puppet::Error, 'Empty values are not allowed' if value == ''
    end
  end
  newparam(:creds) do
    desc 'Credentials for AWS'
    validate do |value|
      fail Puppet::Error, 'Must provide Credentials'
    end
  end

end
