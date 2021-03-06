require 'spec_helper'

describe PuppetSyntax do
  it 'should default exclude_paths to empty array' do
    expect(PuppetSyntax.exclude_paths).to be_empty
  end

  it 'should support setting exclude_paths' do
    PuppetSyntax.exclude_paths = ["foo", "bar/baz"]
    expect(PuppetSyntax.exclude_paths).to eq(["foo", "bar/baz"])
  end

  it 'should support future parser setting' do
    PuppetSyntax.future_parser = true
    expect(PuppetSyntax.future_parser).to eq(true)
  end

end
