require 'rubygems'
gem 'thor'
gem 'net-scp'
gem 'net-ssh'
require 'thor'
require 'net/scp'
require 'net/ssh'

class Deploy < Thor

  desc "download", "Letolti a szerverrol a megfelelo war fajlt."
  method_options :name => :string, :version => :string
  def download
    appName = options[:name]
    appVersion = options[:version]
	
    puts
    dir = "/home/csaba/temp/mkbb/services/tariff/#{appVersion}"
    if File.directory?("#{dir}")
	puts "#{dir} directory is exist."
	if File.exist?("#{dir}/#{appName}.war")
		puts "#{dir}/#{appName}.war file is exists in local filesystem."
		return
	end
    else
	puts "Create local directory: #{dir}"
	FileUtils.mkdir_p dir
    end
 
    puts "download #{appName}.war (version: #{appVersion})"

	    Net::SSH.start("81.0.104.244", "mkbb_test", 
			   :port=>2221) do |ssh|
	    	ssh.scp.download!("/home/mkbb_test/releases/services/tariff/#{appVersion}/#{appName}.war", 
				  dir) do |ch, name, sent, total|
 	   				print "\r#{name}: #{(sent.to_f * 100 / total.to_f).to_i}%"					
  		end
  	    end
    puts	 #Ures sor
  end

  desc "deploy", "Feltelepiti az alkalmazast."
  method_options :name => :string, :version => :string, :env => :string
  def deploy
    appName = options[:name]
    appVersion = options[:version]
    env = options[:env]
	
    invoke :download
    puts
    appFile = "/home/csaba/temp/mkbb/services/tariff/#{appVersion}/#{appName}.war"
    cmd = "/home/csaba/glassfishv3/glassfish/bin/asadmin --port 4884 deploy --force #{appFile}"
    puts "deploying #{appFile} to #{env}"
    system(cmd)

  end
end
