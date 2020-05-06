# This is an autogenerated file for dynamic methods in Locator
# Please rerun bundle exec rake rails_rbi:models[Locator] to regenerate.

# typed: strong
module Locator::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Locator::GeneratedAttributeMethods
end

module Locator::GeneratedAssociationMethods
  sig { returns(T.nilable(::Item)) }
  def item; end

  sig { params(value: T.nilable(::Item)).void }
  def item=(value); end
end

module Locator::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Locator]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Locator]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Locator]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Locator)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Locator) }
  def find_by_id!(id); end
end

class Locator < ActiveRecord::Base
  include Locator::GeneratedAttributeMethods
  include Locator::GeneratedAssociationMethods
  extend Locator::CustomFinderMethods
  extend Locator::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Locator::ActiveRecord_Relation, Locator::ActiveRecord_Associations_CollectionProxy, Locator::ActiveRecord_AssociationRelation) }
end

module Locator::QueryMethodsReturningRelation
  sig { returns(Locator::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Locator::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Locator::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

module Locator::QueryMethodsReturningAssociationRelation
  sig { returns(Locator::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Locator::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Locator::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Locator::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end
end

class Locator::ActiveRecord_Relation < ActiveRecord::Relation
  include Locator::ActiveRelation_WhereNot
  include Locator::CustomFinderMethods
  include Locator::QueryMethodsReturningRelation
  Elem = type_member(fixed: Locator)
end

class Locator::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Locator::ActiveRelation_WhereNot
  include Locator::CustomFinderMethods
  include Locator::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Locator)
end

class Locator::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Locator::CustomFinderMethods
  include Locator::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Locator)

  sig { params(records: T.any(Locator, T::Array[Locator])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Locator, T::Array[Locator])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Locator, T::Array[Locator])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Locator, T::Array[Locator])).returns(T.self_type) }
  def concat(*records); end
end
