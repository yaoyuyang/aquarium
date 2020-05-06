# This is an autogenerated file for dynamic methods in SampleType
# Please rerun bundle exec rake rails_rbi:models[SampleType] to regenerate.

# typed: strong
module SampleType::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module SampleType::GeneratedAttributeMethods
end

module SampleType::GeneratedAssociationMethods
  sig { returns(::ObjectType::ActiveRecord_Associations_CollectionProxy) }
  def object_types; end

  sig { returns(T::Array[Integer]) }
  def object_type_ids; end

  sig { params(value: T::Enumerable[::ObjectType]).void }
  def object_types=(value); end

  sig { returns(::Sample::ActiveRecord_Associations_CollectionProxy) }
  def samples; end

  sig { returns(T::Array[Integer]) }
  def sample_ids; end

  sig { params(value: T::Enumerable[::Sample]).void }
  def samples=(value); end
end

module SampleType::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[SampleType]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[SampleType]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[SampleType]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(SampleType)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(SampleType) }
  def find_by_id!(id); end
end

class SampleType < ActiveRecord::Base
  include SampleType::GeneratedAttributeMethods
  include SampleType::GeneratedAssociationMethods
  extend SampleType::CustomFinderMethods
  extend SampleType::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(SampleType::ActiveRecord_Relation, SampleType::ActiveRecord_Associations_CollectionProxy, SampleType::ActiveRecord_AssociationRelation) }
end

module SampleType::QueryMethodsReturningRelation
  sig { returns(SampleType::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(SampleType::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SampleType::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

module SampleType::QueryMethodsReturningAssociationRelation
  sig { returns(SampleType::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(SampleType::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(SampleType::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SampleType::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end
end

class SampleType::ActiveRecord_Relation < ActiveRecord::Relation
  include SampleType::ActiveRelation_WhereNot
  include SampleType::CustomFinderMethods
  include SampleType::QueryMethodsReturningRelation
  Elem = type_member(fixed: SampleType)
end

class SampleType::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include SampleType::ActiveRelation_WhereNot
  include SampleType::CustomFinderMethods
  include SampleType::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: SampleType)
end

class SampleType::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include SampleType::CustomFinderMethods
  include SampleType::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: SampleType)

  sig { params(records: T.any(SampleType, T::Array[SampleType])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(SampleType, T::Array[SampleType])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(SampleType, T::Array[SampleType])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(SampleType, T::Array[SampleType])).returns(T.self_type) }
  def concat(*records); end
end
