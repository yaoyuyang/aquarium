# This is an autogenerated file for dynamic methods in Item
# Please rerun bundle exec rake rails_rbi:models[Item] to regenerate.

# typed: strong
module Item::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Item::GeneratedAttributeMethods
end

module Item::GeneratedAssociationMethods
  sig { returns(T.nilable(::Locator)) }
  def locator; end

  sig { params(value: T.nilable(::Locator)).void }
  def locator=(value); end
end

module Item::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Item]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Item]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Item]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Item)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Item) }
  def find_by_id!(id); end
end

class Item < ActiveRecord::Base
  include Item::GeneratedAttributeMethods
  include Item::GeneratedAssociationMethods
  extend Item::CustomFinderMethods
  extend Item::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Item::ActiveRecord_Relation, Item::ActiveRecord_Associations_CollectionProxy, Item::ActiveRecord_AssociationRelation) }
end

module Item::QueryMethodsReturningRelation
  sig { returns(Item::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Item::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Item::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

module Item::QueryMethodsReturningAssociationRelation
  sig { returns(Item::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Item::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Item::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Item::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end
end

class Item::ActiveRecord_Relation < ActiveRecord::Relation
  include Item::ActiveRelation_WhereNot
  include Item::CustomFinderMethods
  include Item::QueryMethodsReturningRelation
  Elem = type_member(fixed: Item)
end

class Item::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Item::ActiveRelation_WhereNot
  include Item::CustomFinderMethods
  include Item::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Item)
end

class Item::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Item::CustomFinderMethods
  include Item::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Item)

  sig { params(records: T.any(Item, T::Array[Item])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Item, T::Array[Item])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Item, T::Array[Item])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Item, T::Array[Item])).returns(T.self_type) }
  def concat(*records); end
end
