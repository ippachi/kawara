# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `json_schema` gem.
# Please instead update this file by running `bin/tapioca gem json_schema`.

module JsonPointer
  class << self
    def evaluate(data, path); end
  end
end

# Evaluates a JSON pointer within a JSON document.
#
# Note that this class is designed to evaluate references across a plain JSON
# data object _or_ an instance of `JsonSchema::Schema`, so the constructor's
# `data` argument can be of either type.
class JsonPointer::Evaluator
  # @return [Evaluator] a new instance of Evaluator
  def initialize(data); end

  def evaluate(original_path); end

  private

  def evaluate_segment(data, path_parts); end

  # custom split method to account for blank segments
  def split(path); end

  def transform_key(key); end
end

module JsonReference
  class << self
    def reference(ref); end
  end
end

class JsonReference::Reference
  include ::Comparable

  # @return [Reference] a new instance of Reference
  def initialize(ref); end

  def <=>(other); end
  def inspect; end

  # Returns the value of attribute pointer.
  def pointer; end

  # Sets the attribute pointer
  #
  # @param value the value to set the attribute pointer to.
  def pointer=(_arg0); end

  # Given the document addressed by #uri, resolves the JSON Pointer part of
  # the reference.
  def resolve_pointer(data); end

  def to_s; end

  # Returns the value of attribute uri.
  def uri; end

  # Sets the attribute uri
  #
  # @param value the value to set the attribute uri to.
  def uri=(_arg0); end
end

module JsonSchema
  class << self
    def configuration; end

    # @yield [configuration]
    def configure; end

    def parse(data); end
    def parse!(data); end
  end
end

class JsonSchema::AggregateError < ::JsonSchema::Error
  # @return [AggregateError] a new instance of AggregateError
  def initialize(errors); end

  # Returns the value of attribute errors.
  def errors; end

  # Sets the attribute errors
  #
  # @param value the value to set the attribute errors to.
  def errors=(_arg0); end

  def to_s; end
end

# Attributes mixes in some useful attribute-related methods for use in
# defining schema classes in a spirit similar to Ruby's attr_accessor and
# friends.
module JsonSchema::Attributes
  mixes_in_class_methods ::JsonSchema::Attributes::ClassMethods

  # Allows the values of schema attributes to be accessed with a symbol or a
  # string. So for example, the value of `schema.additional_items` could be
  # procured with `schema[:additionalItems]`. This only works for attributes
  # that are part of the JSON schema specification; other methods on the
  # class are not available (e.g. `expanded`.)
  #
  # This is implemented so that `JsonPointer::Evaluator` can evaluate a
  # reference on an sintance of this class (as well as plain JSON data).
  def [](name); end

  def copy_from(schema); end
  def initialize_attrs; end

  class << self
    # @private
    def included(klass); end
  end
end

# Provides class-level methods for the Attributes module.
module JsonSchema::Attributes::ClassMethods
  # identical to attr_accessible, but allows us to copy in values from a
  # target schema to help preserve our hierarchy during reference expansion
  def attr_copyable(attr, options = T.unsafe(nil)); end

  def attr_schema(attr, options = T.unsafe(nil)); end

  # Attributes that should be copied between classes when invoking
  # Attributes#copy_from.
  #
  # Hash contains instance variable names mapped to a default value for the
  # field.
  def copyable_attrs; end

  # Directive indicating that attributes should be inherited from a parent
  # class.
  #
  # Must appear as first statement in class that mixes in (or whose parent
  # mixes in) the Attributes module.
  def inherit_attrs; end

  # Initializes some class instance variables required to make other
  # methods in the Attributes module work. Run automatically when the
  # module is mixed into another class.
  def initialize_attrs; end

  # Attributes that are part of the JSON schema and hyper-schema
  # specifications. These are allowed to be accessed with the [] operator.
  #
  # Hash contains the access key mapped to the name of the method that should
  # be invoked to retrieve a value. For example, `type` maps to `type` and
  # `additionalItems` maps to `additional_items`.
  def schema_attrs; end
end

class JsonSchema::Configuration
  # @return [Configuration] a new instance of Configuration
  def initialize; end

  # Returns the value of attribute all_of_sub_errors.
  def all_of_sub_errors; end

  # Sets the attribute all_of_sub_errors
  #
  # @param value the value to set the attribute all_of_sub_errors to.
  def all_of_sub_errors=(_arg0); end

  # Returns the value of attribute custom_formats.
  def custom_formats; end

  def register_format(name, validator_proc); end

  # Used for testing.
  def reset!; end

  # Returns the value of attribute validate_regex_with.
  def validate_regex_with; end

  def validate_regex_with=(validator); end
end

# The document store helps resolve URI-based JSON pointers by storing IDs
# that we've seen in the schema.
#
# Each URI tuple also contains a pointer map that helps speed up expansions
# that have already happened and handles cyclic dependencies. Store a
# reference to the top-level schema before doing anything else.
class JsonSchema::DocumentStore
  include ::Enumerable

  # @return [DocumentStore] a new instance of DocumentStore
  def initialize; end

  # @raise [ArgumentError]
  def add_schema(schema); end

  def each; end
  def lookup_schema(uri); end
end

class JsonSchema::Error < ::RuntimeError; end

module JsonSchema::ErrorFormatter
  private

  def to_list(list); end

  class << self
    def to_list(list); end
  end
end

class JsonSchema::Parser
  # Returns the value of attribute errors.
  def errors; end

  # Sets the attribute errors
  #
  # @param value the value to set the attribute errors to.
  def errors=(_arg0); end

  # Basic parsing of a schema. May return a malformed schema! (Use `#parse!`
  # to raise errors instead).
  def parse(data, parent = T.unsafe(nil)); end

  def parse!(data, parent = T.unsafe(nil)); end

  private

  def build_uri(id, parent_uri); end
  def parse_additional_items(schema); end
  def parse_additional_properties(schema); end
  def parse_all_of(schema); end
  def parse_any_of(schema); end
  def parse_data(data, parent, fragment); end
  def parse_definitions(schema); end
  def parse_dependencies(schema); end
  def parse_items(schema); end
  def parse_links(schema); end
  def parse_media(schema); end
  def parse_not(schema); end
  def parse_one_of(schema); end
  def parse_pattern_properties(schema); end
  def parse_properties(schema); end
  def parse_regex(schema, regex); end
  def parse_schema(data, parent, fragment); end
  def validate_format(schema, format); end
  def validate_known_type!(schema); end
  def validate_type(schema, types, field); end
end

JsonSchema::Parser::ALLOWED_TYPES = T.let(T.unsafe(nil), Array)
JsonSchema::Parser::BOOLEAN = T.let(T.unsafe(nil), Array)

# Reuse these frozen objects to avoid allocations
JsonSchema::Parser::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)

JsonSchema::Parser::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
JsonSchema::Parser::FORMATS = T.let(T.unsafe(nil), Array)
JsonSchema::Parser::FRIENDLY_TYPES = T.let(T.unsafe(nil), Hash)

class JsonSchema::ReferenceExpander
  # Returns the value of attribute errors.
  def errors; end

  # Sets the attribute errors
  #
  # @param value the value to set the attribute errors to.
  def errors=(_arg0); end

  def expand(schema, options = T.unsafe(nil)); end
  def expand!(schema, options = T.unsafe(nil)); end

  # Returns the value of attribute store.
  def store; end

  # Sets the attribute store
  #
  # @param value the value to set the attribute store to.
  def store=(_arg0); end

  private

  def add_reference(schema); end
  def build_schema_paths(uri, schema); end
  def dereference(ref_schema, ref_stack, parent_ref: T.unsafe(nil)); end
  def lookup_pointer(uri, pointer); end
  def lookup_reference(uri); end
  def resolve_pointer(ref_schema, resolved_schema); end
  def resolve_reference(ref_schema); end
  def resolve_uri(ref_schema, uri); end
  def schema_children(schema); end
  def traverse_schema(schema); end
  def unresolved_refs(schema); end
end

class JsonSchema::Schema
  include ::JsonSchema::Attributes
  extend ::JsonSchema::Attributes::ClassMethods

  # @return [Schema] a new instance of Schema
  def initialize; end

  def additional_items; end
  def additional_items=(_arg0); end

  # allow booleans to be access with question mark
  def additional_items?; end

  def additional_properties; end
  def additional_properties=(_arg0); end
  def all_of; end
  def all_of=(_arg0); end
  def any_of; end
  def any_of=(_arg0); end
  def clones; end
  def clones=(_arg0); end
  def data; end
  def data=(_arg0); end
  def default; end
  def default=(_arg0); end
  def definitions; end
  def definitions=(_arg0); end
  def dependencies; end
  def dependencies=(_arg0); end
  def description; end
  def description=(_arg0); end
  def enc_type; end
  def enc_type=(_arg0); end
  def enum; end
  def enum=(_arg0); end
  def expand_references(options = T.unsafe(nil)); end
  def expand_references!(options = T.unsafe(nil)); end
  def expanded; end
  def expanded=(_arg0); end
  def expanded?; end
  def format; end
  def format=(_arg0); end

  # Fragment of a JSON Pointer that can help us build a pointer back to this
  # schema for debugging.
  def fragment; end

  # Fragment of a JSON Pointer that can help us build a pointer back to this
  # schema for debugging.
  def fragment=(_arg0); end

  def href; end
  def href=(_arg0); end
  def id; end
  def id=(_arg0); end
  def inspect; end
  def inspect_schema; end
  def inspect_value(value); end
  def items; end
  def items=(_arg0); end
  def links; end
  def links=(_arg0); end
  def max; end
  def max=(_arg0); end
  def max_exclusive; end
  def max_exclusive=(_arg0); end
  def max_exclusive?; end
  def max_items; end
  def max_items=(_arg0); end
  def max_length; end
  def max_length=(_arg0); end
  def max_properties; end
  def max_properties=(_arg0); end
  def media; end
  def media=(_arg0); end
  def media_type; end
  def media_type=(_arg0); end
  def method; end
  def method=(_arg0); end
  def min; end
  def min=(_arg0); end
  def min_exclusive; end
  def min_exclusive=(_arg0); end
  def min_exclusive?; end
  def min_items; end
  def min_items=(_arg0); end
  def min_length; end
  def min_length=(_arg0); end
  def min_properties; end
  def min_properties=(_arg0); end
  def multiple_of; end
  def multiple_of=(_arg0); end
  def not; end
  def not=(_arg0); end
  def one_of; end
  def one_of=(_arg0); end

  # @return [Boolean]
  def original?; end

  def parent; end
  def parent=(_arg0); end
  def path_start; end
  def path_start=(_arg0); end
  def pattern; end
  def pattern=(_arg0); end
  def pattern_properties; end
  def pattern_properties=(_arg0); end
  def pointer; end
  def properties; end
  def properties=(_arg0); end
  def read_only; end
  def read_only=(_arg0); end
  def read_only?; end

  # Rather than a normal schema, the node may be a JSON Reference. In this
  # case, no other attributes will be filled in except for #parent.
  def reference; end

  # Rather than a normal schema, the node may be a JSON Reference. In this
  # case, no other attributes will be filled in except for #parent.
  def reference=(_arg0); end

  def rel; end
  def rel=(_arg0); end
  def required; end
  def required=(_arg0); end
  def schema; end
  def schema=(_arg0); end
  def strict_properties; end
  def strict_properties=(_arg0); end
  def target_schema; end
  def target_schema=(_arg0); end
  def title; end
  def title=(_arg0); end
  def type; end
  def type=(value); end

  # An array of Ruby classes that are equivalent to the types defined in the
  # schema.
  #
  # Type: Array[Class]
  def type_parsed; end

  def unique_items; end
  def unique_items=(_arg0); end
  def unique_items?; end
  def uri; end
  def uri=(_arg0); end
  def validate(data, fail_fast: T.unsafe(nil)); end
  def validate!(data, fail_fast: T.unsafe(nil)); end
end

# Link subobject for a hyperschema.
class JsonSchema::Schema::Link < ::JsonSchema::Schema; end

# Media type subobject for a hyperschema.
class JsonSchema::Schema::Media
  # Returns the value of attribute binary_encoding.
  def binary_encoding; end

  # Sets the attribute binary_encoding
  #
  # @param value the value to set the attribute binary_encoding to.
  def binary_encoding=(_arg0); end

  # Returns the value of attribute type.
  def type; end

  # Sets the attribute type
  #
  # @param value the value to set the attribute type to.
  def type=(_arg0); end
end

JsonSchema::Schema::TYPE_MAP = T.let(T.unsafe(nil), Hash)

class JsonSchema::SchemaError < ::JsonSchema::Error
  # @return [SchemaError] a new instance of SchemaError
  def initialize(schema, message, type); end

  # Returns the value of attribute message.
  def message; end

  # Sets the attribute message
  #
  # @param value the value to set the attribute message to.
  def message=(_arg0); end

  # Returns the value of attribute schema.
  def schema; end

  # Sets the attribute schema
  #
  # @param value the value to set the attribute schema to.
  def schema=(_arg0); end

  def to_s; end

  # Returns the value of attribute type.
  def type; end

  # Sets the attribute type
  #
  # @param value the value to set the attribute type to.
  def type=(_arg0); end

  class << self
    def aggregate(errors); end
  end
end

class JsonSchema::ValidationError < ::JsonSchema::SchemaError
  # @return [ValidationError] a new instance of ValidationError
  def initialize(schema, path, message, type, options = T.unsafe(nil)); end

  # Returns the value of attribute data.
  def data; end

  # Sets the attribute data
  #
  # @param value the value to set the attribute data to.
  def data=(_arg0); end

  # Returns the value of attribute path.
  def path; end

  # Sets the attribute path
  #
  # @param value the value to set the attribute path to.
  def path=(_arg0); end

  def pointer; end

  # Returns the value of attribute sub_errors.
  def sub_errors; end

  # Sets the attribute sub_errors
  #
  # @param value the value to set the attribute sub_errors to.
  def sub_errors=(_arg0); end

  def to_s; end
end

class JsonSchema::Validator
  # @return [Validator] a new instance of Validator
  def initialize(schema); end

  # Returns the value of attribute errors.
  def errors; end

  # Sets the attribute errors
  #
  # @param value the value to set the attribute errors to.
  def errors=(_arg0); end

  def validate(data, fail_fast: T.unsafe(nil)); end
  def validate!(data, fail_fast: T.unsafe(nil)); end

  private

  def fast_and(valid_old, valid_new); end
  def find_parent(schema); end
  def first_visit(schema, errors, path); end

  # for use with additionalProperties and strictProperties
  def get_extra_keys(schema, data); end

  # works around &&'s "lazy" behavior
  def strict_and(valid_old, valid_new); end

  def validate_additional_properties(schema, data, errors, path); end
  def validate_all_of(schema, data, errors, path); end
  def validate_any_of(schema, data, errors, path); end
  def validate_data(schema, data, errors, path); end
  def validate_dependencies(schema, data, errors, path); end
  def validate_enum(schema, data, errors, path); end
  def validate_extra(schema, data, errors, path); end
  def validate_format(schema, data, errors, path); end
  def validate_items(schema, data, errors, path); end
  def validate_max(schema, data, errors, path); end
  def validate_max_items(schema, data, errors, path); end
  def validate_max_length(schema, data, errors, path); end
  def validate_max_properties(schema, data, errors, path); end
  def validate_min(schema, data, errors, path); end
  def validate_min_items(schema, data, errors, path); end
  def validate_min_length(schema, data, errors, path); end
  def validate_min_properties(schema, data, errors, path); end
  def validate_multiple_of(schema, data, errors, path); end
  def validate_not(schema, data, errors, path); end
  def validate_one_of(schema, data, errors, path); end
  def validate_pattern(schema, data, errors, path); end
  def validate_pattern_properties(schema, data, errors, path); end
  def validate_properties(schema, data, errors, path); end
  def validate_required(schema, data, errors, path, required); end
  def validate_strict_properties(schema, data, errors, path); end
  def validate_type(schema, data, errors, path); end
  def validate_unique_items(schema, data, errors, path); end
end

JsonSchema::Validator::DATE_PATTERN = T.let(T.unsafe(nil), Regexp)
JsonSchema::Validator::DATE_TIME_PATTERN = T.let(T.unsafe(nil), Regexp)
JsonSchema::Validator::DEFAULT_FORMAT_VALIDATORS = T.let(T.unsafe(nil), Hash)
JsonSchema::Validator::EMAIL_PATTERN = T.let(T.unsafe(nil), Regexp)
JsonSchema::Validator::HOSTNAME_PATTERN = T.let(T.unsafe(nil), Regexp)

# from: http://stackoverflow.com/a/17871737
JsonSchema::Validator::IPV4_PATTERN = T.let(T.unsafe(nil), Regexp)

# from: http://stackoverflow.com/a/17871737
JsonSchema::Validator::IPV6_PATTERN = T.let(T.unsafe(nil), Regexp)

JsonSchema::Validator::UUID_PATTERN = T.let(T.unsafe(nil), Regexp)
