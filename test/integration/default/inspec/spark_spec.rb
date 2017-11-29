control 'Testing Apache Spark' do
  impact 1.0

  describe file('/etc/spark/log4j.properties') do
    it { should be_file }
    it { should be_owned_by 'spark'}
    it { should be_grouped_into 'spark'}
  end

  # describe service("spark-master") do
  #   it { should be_enabled }
  #   it { should be_running }
  # end

  # portlist = [8080, 7077]
  # for p in portlist do
  #   describe port(p) do
  #     it { should be_listening }
  #   end
  # end

  describe file('/etc/profile.d/spark.sh') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end

  describe file('/etc/spark/spark-env.sh') do
    it { should be_file }
    it { should be_owned_by 'spark' }
  end
  
  describe file('/tmp/spark-2.2.0-bin-hadoop2.7.tgz') do
    it { should be_file }
    it { should be_owned_by 'root' }
  end
end
