require 'chefspec'

describe 'http_request::options' do
  platform 'ubuntu'

  describe 'optionss a http_request with an explicit action' do
    it { is_expected.to options_http_request('explicit_action') }
    it { is_expected.to_not options_http_request('not_explicit_action') }
  end

  describe 'optionss a http_request with attributes' do
    it { is_expected.to options_http_request('with_attributes').with(url: 'http://my.url') }
    it { is_expected.to_not options_http_request('with_attributes').with(url: 'http://my.other.url') }
  end

  describe 'optionss a http_request when specifying the identity attribute' do
    it { is_expected.to options_http_request('identity_attribute') }
  end
end
