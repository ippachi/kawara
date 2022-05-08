# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sinatra-contrib` gem.
# Please instead update this file by running `bin/tapioca gem sinatra-contrib`.

module Sinatra
  class << self
    def helpers(*extensions, &block); end
    def new(base = T.unsafe(nil), &block); end
    def register(*extensions, &block); end
    def use(*args, &block); end
  end
end

module Sinatra::Capture
  include ::Sinatra::EngineTracking

  def capture(*args, &block); end
  def capture_later(&block); end
end

module Sinatra::ConfigFile
  def config_file(*paths); end

  private

  def config_for_env(hash); end
  def environment_keys?(hash); end
  def from_environment_key(hash); end

  class << self
    def registered(base); end
  end
end

class Sinatra::ConfigFile::UnsupportedConfigType < ::Exception
  def message; end
end

module Sinatra::ContentFor
  include ::Sinatra::EngineTracking
  include ::Sinatra::Capture

  def clear_content_for(key); end
  def content_for(key, value = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def content_for?(key); end
  def yield_content(key, *args, &block); end

  private

  def content_blocks; end
end

module Sinatra::Contrib
  extend ::Sinatra::Contrib::Loader

  class << self
    def registered(base); end
  end
end

module Sinatra::Contrib::All
  class << self
    def registered(base); end
  end
end

module Sinatra::Contrib::Common
  extend ::Sinatra::Contrib::Loader
end

module Sinatra::Contrib::Custom
  extend ::Sinatra::Contrib::Loader
end

module Sinatra::Contrib::Loader
  def autoload(name, path, method = T.unsafe(nil)); end
  def extensions; end
  def helpers(name, path); end
  def register(name, path); end
  def registered(base); end
end

Sinatra::Contrib::VERSION = T.let(T.unsafe(nil), String)

module Sinatra::Cookies
  def cookies; end
end

class Sinatra::Cookies::Jar
  include ::Enumerable

  def initialize(app); end

  def ==(other); end
  def [](key); end
  def []=(key, value); end
  def assoc(key); end
  def clear; end
  def compare_by_identity?; end
  def default; end
  def default_proc; end
  def delete(key); end
  def delete_if; end
  def each(&block); end
  def each_key(&block); end
  def each_pair(&block); end
  def each_value(&block); end
  def empty?; end
  def fetch(key, &block); end
  def flatten; end
  def has_key?(key); end
  def has_value?(value); end
  def hash; end
  def include?(key); end
  def index(value); end
  def inspect; end
  def invert; end
  def keep_if; end
  def key(value); end
  def key?(key); end
  def keys; end
  def length; end
  def member?(key); end
  def merge(other, &block); end
  def merge!(other); end
  def options; end
  def rassoc(value); end
  def rehash; end
  def reject(&block); end
  def reject!; end
  def replace(other); end
  def select(&block); end
  def select!; end
  def set(key, options = T.unsafe(nil)); end
  def shift; end
  def size; end
  def sort(&block); end
  def store(key, value); end
  def to_a; end
  def to_hash; end
  def to_s; end
  def update(other); end
  def value?(value); end
  def values; end
  def values_at(*list); end

  private

  def deleted; end
  def parse_response; end
  def request_cookies; end
  def response_cookies; end
  def warn(message); end
end

module Sinatra::EngineTracking
  def initialize(*_arg0); end

  def builder?; end
  def coffee?; end
  def creole?; end
  def current_engine; end
  def erb?; end
  def erubi?; end
  def erubis?; end
  def haml?; end
  def less?; end
  def liquid?; end
  def markaby?; end
  def markdown?; end
  def nokogiri?; end
  def radius?; end
  def rdoc?; end
  def ruby?; end
  def sass?; end
  def scss?; end
  def slim?; end
  def textile?; end
  def with_engine(engine); end

  private

  def render(engine, *_arg1); end
end

module Sinatra::Extension
  def configure(*args, &block); end
  def registered(base = T.unsafe(nil), &block); end
  def settings; end

  private

  def method_missing(method, *args, &block); end
  def record(method, *args, &block); end
  def recorded_methods; end
  def replay(object); end

  class << self
    def new(&block); end
  end
end

class Sinatra::Extension::DontCall < ::BasicObject
  def initialize(method); end

  def inspect; end
  def method_missing(*_arg0); end
end

module Sinatra::JSON
  def json(object, options = T.unsafe(nil)); end

  private

  def resolve_content_type(options = T.unsafe(nil)); end
  def resolve_encoder(options = T.unsafe(nil)); end
  def resolve_encoder_action(object, encoder); end

  class << self
    def encode(object); end
  end
end

module Sinatra::LinkHeader
  def link(*urls); end
  def link_headers; end
  def prefetch(*urls); end
  def stylesheet(*urls); end

  class << self
    def registered(base); end
  end
end

module Sinatra::MultiRoute
  def delete(*args, &block); end
  def get(*args, &block); end
  def head(*args, &block); end
  def options(*args, &block); end
  def patch(*args, &block); end
  def post(*args, &block); end
  def put(*args, &block); end
  def route(*args, &block); end

  private

  def route_args(args); end
end

module Sinatra::Namespace
  class << self
    def extended(base); end
    def new(base, pattern, conditions = T.unsafe(nil), &block); end
  end
end

module Sinatra::Namespace::BaseMethods
  include ::Sinatra::Namespace::SharedMethods
end

module Sinatra::Namespace::InstanceMethods
  def redirect_to(uri, *args); end
  def settings; end
  def template_cache; end
end

module Sinatra::Namespace::NamespacedMethods
  include ::Sinatra::Namespace::SharedMethods

  def after(*a, &b); end
  def base; end
  def before(*a, &b); end
  def delete(*a, &b); end
  def disable(*opts); end
  def enable(*opts); end
  def error(*codes, &block); end
  def errors; end
  def get(*a, &b); end
  def head(*a, &b); end
  def helpers(*extensions, &block); end
  def invoke_hook(name, *args); end
  def layout(name = T.unsafe(nil), &block); end
  def namespace_errors; end
  def not_found(&block); end
  def options(*a, &b); end
  def patch(*a, &b); end
  def pattern; end
  def post(*a, &b); end
  def put(*a, &b); end
  def register(*extensions, &block); end
  def respond_to(*args); end
  def set(key, value = T.unsafe(nil), &block); end
  def template(name, &block); end
  def templates; end

  private

  def app; end
  def compile(pattern, conditions, default_pattern = T.unsafe(nil)); end
  def method_missing(method, *args, &block); end
  def prefixed(method, pattern = T.unsafe(nil), conditions = T.unsafe(nil), &block); end
  def prefixed_path(a, b); end
  def respond_to?(method, include_private = T.unsafe(nil)); end

  class << self
    def prefixed(*names); end
  end
end

Sinatra::Namespace::NamespacedMethods::ALLOWED_ENGINES = T.let(T.unsafe(nil), Array)

module Sinatra::Namespace::SharedMethods
  def namespace(pattern, conditions = T.unsafe(nil), &block); end
end

module Sinatra::Reloader
  def after_reload(&block); end

  class << self
    def perform(klass); end
    def registered(klass); end
  end
end

module Sinatra::Reloader::BaseMethods
  def add_filter(type, path = T.unsafe(nil), **options, &block); end
  def compile!(verb, path, block, **options); end
  def error(*codes, &block); end
  def inherited(subclass); end
  def inline_templates=(file = T.unsafe(nil)); end
  def register(*extensions, &block); end
  def run!(*args); end
  def use(middleware, *args, &block); end
end

module Sinatra::Reloader::ExtensionMethods
  def also_reload(*glob); end
  def deactivate(element); end
  def dont_reload(*glob); end

  private

  def register_path; end
  def registering_extension?; end
  def start_registering_extension; end
  def stop_registering_extension; end
  def watch_element(path, type, representation = T.unsafe(nil)); end
end

Sinatra::Reloader::MUTEX_FOR_PERFORM = T.let(T.unsafe(nil), Thread::Mutex)

class Sinatra::Reloader::Watcher
  def initialize(path); end

  def elements; end
  def ignore; end
  def ignore?; end
  def inline_templates?; end
  def mtime; end
  def path; end
  def removed?; end
  def update; end
  def updated?; end
end

class Sinatra::Reloader::Watcher::Element < ::Struct; end

class Sinatra::Reloader::Watcher::List
  def initialize; end

  def ignore(path); end
  def updated; end
  def watch(path, element); end
  def watch_file(path); end
  def watcher_for(path); end
  def watchers; end

  class << self
    def for(app); end
  end
end

module Sinatra::RequiredParams
  def required_params(*keys); end

  private

  def _required_params(p, *keys); end
end

module Sinatra::RespondWith
  def mime_type(*_arg0); end
  def remap_extensions; end
  def rendering_method(engine); end
  def respond_to(*formats); end

  private

  def compile!(verb, path, block, **options); end

  class << self
    def engines; end
    def jrubyify(engs); end
    def registered(base); end
  end
end

class Sinatra::RespondWith::Format
  def initialize(app); end

  def finish; end
  def method_missing(method, *args, &block); end
  def on(type, &block); end
end

module Sinatra::RespondWith::Helpers
  include ::Sinatra::JSON

  def respond_to(&block); end
  def respond_with(template, object = T.unsafe(nil), &block); end

  private

  def template_for(name, exts); end
end

module Sinatra::Streaming
  def stream(*_arg0); end
end

module Sinatra::Streaming::Stream
  def <<(data); end
  def app; end
  def app=(_arg0); end
  def bytes(*_arg0); end
  def chars(*_arg0); end
  def close_read; end
  def closed; end
  def closed=(_arg0); end
  def closed?; end
  def closed_read?; end
  def closed_write?; end
  def each; end
  def each_byte(*_arg0); end
  def each_char(*_arg0); end
  def each_line(*_arg0); end
  def eof(*_arg0); end
  def eof?(*_arg0); end
  def external_encoding; end
  def flush(*_arg0); end
  def fsync(*_arg0); end
  def getbyte(*_arg0); end
  def getc(*_arg0); end
  def gets(*_arg0); end
  def internal_encoding(*_arg0); end
  def isatty; end
  def lineno; end
  def lineno=(_arg0); end
  def lines(*_arg0); end
  def map(&block); end
  def map!(&block); end
  def pid(*_arg0); end
  def pos; end
  def pos=(_arg0); end
  def print(*args); end
  def printf(format, *args); end
  def putc(c); end
  def puts(*args); end
  def read(*_arg0); end
  def read_nonblock(*_arg0); end
  def readbyte(*_arg0); end
  def readchar(*_arg0); end
  def readline(*_arg0); end
  def readlines(*_arg0); end
  def readpartial(*_arg0); end
  def rewind; end
  def seek(*_arg0); end
  def settings; end
  def sync; end
  def sysread(*_arg0); end
  def sysseek(*_arg0); end
  def syswrite(data); end
  def tell; end
  def transformer; end
  def transformer=(_arg0); end
  def tty?; end
  def ungetbyte(*_arg0); end
  def ungetc(*_arg0); end
  def write(data); end
  def write_nonblock(data); end

  private

  def not_open_for_reading(*_arg0); end

  class << self
    def extended(obj); end
  end
end

module Sinatra::TestHelpers
  include ::Rack::Test::Methods
  extend ::Forwardable

  def app; end
  def app=(base); end
  def body(*args, **_arg1, &block); end
  def build_rack_test_session(name); end
  def configure(*args, **_arg1, &block); end
  def cookie_jar(*args, **_arg1, &block); end
  def disable(*args, **_arg1, &block); end
  def enable(*args, **_arg1, &block); end
  def env_for(*args, **_arg1, &block); end
  def errors(*args, **_arg1, &block); end
  def headers(*args, **_arg1, &block); end
  def helpers(*args, **_arg1, &block); end
  def last_env; end
  def last_request?; end
  def mock_app(base = T.unsafe(nil), &block); end
  def register(*args, **_arg1, &block); end
  def session; end
  def set(*args, **_arg1, &block); end
  def set_app(base); end
  def settings; end
  def settings=(_arg0); end
  def status(*args, **_arg1, &block); end
  def use(*args, **_arg1, &block); end
end

class Sinatra::TestHelpers::Session < ::Rack::Test::Session
  def global_env; end

  private

  def default_env; end
end

Sinatra::VERSION = T.let(T.unsafe(nil), String)
