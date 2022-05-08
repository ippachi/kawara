# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `redis-rack` gem.
# Please instead update this file by running `bin/tapioca gem redis-rack`.

module Rack
  class << self
    def release; end
    def version; end
  end
end

Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)
Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)
Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)
Rack::DELETE = T.let(T.unsafe(nil), String)
Rack::ETAG = T.let(T.unsafe(nil), String)
Rack::EXPIRES = T.let(T.unsafe(nil), String)
Rack::File = Rack::Files
Rack::GET = T.let(T.unsafe(nil), String)
Rack::HEAD = T.let(T.unsafe(nil), String)
Rack::HTTPS = T.let(T.unsafe(nil), String)
Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)
Rack::HTTP_HOST = T.let(T.unsafe(nil), String)
Rack::HTTP_PORT = T.let(T.unsafe(nil), String)
Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)
Rack::LINK = T.let(T.unsafe(nil), String)
Rack::OPTIONS = T.let(T.unsafe(nil), String)
Rack::PATCH = T.let(T.unsafe(nil), String)
Rack::PATH_INFO = T.let(T.unsafe(nil), String)
Rack::POST = T.let(T.unsafe(nil), String)
Rack::PUT = T.let(T.unsafe(nil), String)
Rack::QUERY_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)
Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)
Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)
Rack::RACK_INPUT = T.let(T.unsafe(nil), String)
Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)
Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)
Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)
Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)
Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)
Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)
Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)
Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)
Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)
Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)
Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)
Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)
Rack::RACK_VERSION = T.let(T.unsafe(nil), String)
Rack::RELEASE = T.let(T.unsafe(nil), String)
Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)
Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)
Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)
Rack::SERVER_NAME = T.let(T.unsafe(nil), String)
Rack::SERVER_PORT = T.let(T.unsafe(nil), String)
Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)
Rack::SET_COOKIE = T.let(T.unsafe(nil), String)
module Rack::Session; end

class Rack::Session::Redis < ::Rack::Session::Abstract::PersistedSecure
  def initialize(app, options = T.unsafe(nil)); end

  def delete_session(req, sid, options); end
  def find_session(req, sid); end
  def generate_unique_sid(session); end
  def mutex; end
  def threadsafe?; end
  def with(&block); end
  def with_lock(req, default = T.unsafe(nil)); end
  def write_session(req, sid, new_session, options = T.unsafe(nil)); end

  private

  def get_session_with_fallback(sid); end
end

Rack::Session::Redis::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)
Rack::TRACE = T.let(T.unsafe(nil), String)
Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)
Rack::UNLINK = T.let(T.unsafe(nil), String)
Rack::VERSION = T.let(T.unsafe(nil), Array)

class Redis
  include ::Redis::Commands::Bitmaps
  include ::Redis::Commands::Cluster
  include ::Redis::Commands::Connection
  include ::Redis::Commands::Geo
  include ::Redis::Commands::Hashes
  include ::Redis::Commands::HyperLogLog
  include ::Redis::Commands::Keys
  include ::Redis::Commands::Lists
  include ::Redis::Commands::Pubsub
  include ::Redis::Commands::Scripting
  include ::Redis::Commands::Server
  include ::Redis::Commands::Sets
  include ::Redis::Commands::SortedSets
  include ::Redis::Commands::Streams
  include ::Redis::Commands::Strings
  include ::Redis::Commands::Transactions
  include ::Redis::Commands

  def initialize(options = T.unsafe(nil)); end

  def _client; end
  def close; end
  def commit; end
  def connected?; end
  def connection; end
  def disconnect!; end
  def dup; end
  def id; end
  def inspect; end
  def multi(&block); end
  def pipelined(&block); end
  def queue(*command); end
  def with_reconnect(val = T.unsafe(nil), &blk); end
  def without_reconnect(&blk); end

  private

  def _subscription(method, timeout, channels, block); end
  def send_blocking_command(command, timeout, &block); end
  def send_command(command, &block); end
  def synchronize; end

  class << self
    def current; end
    def current=(redis); end
    def deprecate!(message); end
    def exists_returns_integer; end
    def exists_returns_integer=(value); end
    def raise_deprecations; end
    def raise_deprecations=(_arg0); end
    def silence_deprecations; end
    def silence_deprecations=(_arg0); end
  end
end

Redis::BASE_PATH = T.let(T.unsafe(nil), String)
class Redis::Deprecated < ::StandardError; end
module Redis::Rack; end

class Redis::Rack::Connection
  def initialize(options = T.unsafe(nil)); end

  def pool; end
  def pool_options; end
  def pooled?; end
  def store; end
  def with(&block); end
end

Redis::Rack::Connection::POOL_KEYS = T.let(T.unsafe(nil), Array)
Redis::Rack::VERSION = T.let(T.unsafe(nil), String)
Redis::VERSION = T.let(T.unsafe(nil), String)
