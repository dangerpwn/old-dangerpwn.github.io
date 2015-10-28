require 'digest/md5'

def myhash(str)
      Digest::MD5.hexdigest(str)[0..8]
end

puts myhash('./token')
