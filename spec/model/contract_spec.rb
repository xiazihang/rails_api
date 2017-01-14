require 'rails_helper'

RSpec.describe Contract, :type => :model do
  it 'should create contract correctly' do
    contract = Contract.create!(contract_type: 'HLTH', executed_date: Time.now.yesterday, termination_date: Time.now + 10.days, end_date: Time.now + 15.days)

    expect(contract.contract_type).to eq "HLTH"
  end

  it 'should fail when create contract with invalid date' do
    expect(Contract.create!(contract_type: 'HLTH',
                     executed_date: Time.now,
                     termination_date: Time.now.yesterday,
                     end_date: Time.now + 15.days)).to raise_error()
  end
end

