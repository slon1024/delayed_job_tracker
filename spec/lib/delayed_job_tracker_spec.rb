describe Delayed::Plugins::Tracker do
  subject { Delayed::Plugins::Tracker }
  
  before do 
    Delayed::Job.enqueue job
    subject.before_perform &before_perform
    subject.after_perform &after_perform
  end
  
  let(:job) { AlphaJob.new }
  let(:before_perform) { Proc.new{} }
  let(:after_perform) { Proc.new{} }

  it 'calls hooks' do
    expect(before_perform).to receive(:call)
    expect(after_perform).to receive(:call)
    Delayed::Worker.new.work_off
  end
end