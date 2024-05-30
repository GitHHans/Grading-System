# frozen_string_literal: true

require 'spec_helper'

describe Main do
  it "should greet" do
    main = Main.new
    expect { main.greet }.to output("Hello from Main class\nHello from Module1\nHello from Module2\n").to_stdout
  end
end
