-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant0b049af2eca629885864d2bcffbaa2cd12464c6c3c4a678bd4956514706b53c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b049af2eca629885864d2bcffbaa2cd12464c6c3c4a678bd4956514706b53c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Meta.Variant0b049af2eca629885864d2bcffbaa2cd12464c6c3c4a678bd4956514706b53c1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0b049af2eca629885864d2bcffbaa2cd12464c6c3c4a678bd4956514706b53c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
public import Lean.Meta.HasAssignableMVar
public import Lean.Meta.LevelDefEq
public import Lean.Meta.WHNF
public import Lean.Meta.InferType
public import Lean.Meta.FunInfo
public import Lean.Meta.ExprDefEq
public import Lean.Meta.DecLevel
public import Lean.Meta.DiscrTree
public import Lean.Meta.Reduce
public import Lean.Meta.Instances
public import Lean.Meta.AbstractMVars
public import Lean.Meta.SynthInstance
public import Lean.Meta.AppBuilder
public import Lean.Meta.Sorry
public import Lean.Meta.Tactic
public import Lean.Meta.KAbstract
public import Lean.Meta.RecursorInfo
public import Lean.Meta.GeneralizeTelescope
public import Lean.Meta.Match
public import Lean.Meta.ReduceEval
public import Lean.Meta.Closure
public import Lean.Meta.AbstractNestedProofs
public import Lean.Meta.WrapInstance
public import Lean.Meta.LetToHave
public import Lean.Meta.ForEachExpr
public import Lean.Meta.Transform
public import Lean.Meta.PPGoal
public import Lean.Meta.UnificationHint
public import Lean.Meta.Inductive
public import Lean.Meta.SizeOf
public import Lean.Meta.IndPredBelow
public import Lean.Meta.Coe
public import Lean.Meta.CollectFVars
public import Lean.Meta.GeneralizeVars
public import Lean.Meta.Injective
public import Lean.Meta.Structure
public import Lean.Meta.Constructions
public import Lean.Meta.CongrTheorems
public import Lean.Meta.Eqns
public import Lean.Meta.ExprLens
public import Lean.Meta.ExprTraverse
public import Lean.Meta.Eval
public import Lean.Meta.CoeAttr
public import Lean.Meta.Iterator
public import Lean.Meta.LazyDiscrTree
public import Lean.Meta.LitValues
public import Lean.Meta.CheckTactic
public import Lean.Meta.Canonicalizer
public import Lean.Meta.Diagnostics
public import Lean.Meta.BinderNameHint
public import Lean.Meta.TryThis
public import Lean.Meta.Hint
public import Lean.Meta.MethodSpecs
public import Lean.Meta.CtorIdxHInj
public import Lean.Meta.Sym
public import Lean.Meta.MonadSimp
public import Lean.Meta.HaveTelescope

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant0b049af2eca629885864d2bcffbaa2cd12464c6c3c4a678bd4956514706b53c1

