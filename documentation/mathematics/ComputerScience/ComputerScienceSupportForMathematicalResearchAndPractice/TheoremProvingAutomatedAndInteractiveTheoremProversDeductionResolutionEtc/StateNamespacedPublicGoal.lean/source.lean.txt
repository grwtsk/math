-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalIsIrrelevantNoCache.Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoalIsIrrelevantNoCache.Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/State.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.Traversal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalIsIrrelevantNoCache.Variant4306bdabd6512e343c659fb15d86d399d1dc85a8afe5bab8a417fc3a906aa501

public section

namespace Aesop

/-! ## Marking Nodes As Proven/Unprovable/Irrelevant -/

/-! ### Irrelevant -/

/-
Each of our node types (goal, rapp, mvar cluster) is irrelevant under the
same conditions:

1. the node is proven or unprovable *or*
2. the node's parent is irrelevant. (If the node has no parent, this condition
   does not apply.)
-/

def Goal.isIrrelevantNoCache (g : Goal) : BaseIO Bool :=
  (return g.state.isIrrelevant) <||>
  (return (← g.parent.get).isIrrelevant)

def Rapp.isIrrelevantNoCache (r : Rapp) : BaseIO Bool :=
  (return r.state.isIrrelevant) <||>
  (return (← r.parent.get).isIrrelevant)

def MVarCluster.isIrrelevantNoCache (c : MVarCluster) : BaseIO Bool := do
  (return c.state.isIrrelevant) <||> do
    match c.parent? with
    | none => return false
    | some parentRef => return (← parentRef.get).isIrrelevant

def TreeRef.markSubtreeIrrelevant : TreeRef → BaseIO Unit :=
  preTraverseDown
    (λ gref => do
      if (← gref.get).isIrrelevant then
        return false -- Subtree is already irrelevant.
      gref.modify λ g => g.setIsIrrelevant true
      return true)
    (λ rref => do
      if (← rref.get).isIrrelevant then
        return false -- Subtree is already irrelevant.
      rref.modify λ r => r.setIsIrrelevant true
      return true)
    (λ cref => do
      if (← cref.get).isIrrelevant then
        return false -- Subtree is already irrelevant.
      cref.modify λ c => c.setIsIrrelevant true
      return true)

def GoalRef.markSubtreeIrrelevant (gref : GoalRef) : BaseIO Unit :=
  (TreeRef.goal gref).markSubtreeIrrelevant

def RappRef.markSubtreeIrrelevant (rref : RappRef) : BaseIO Unit :=
  (TreeRef.rapp rref).markSubtreeIrrelevant

def MVarClusterRef.markSubtreeIrrelevant (cref : MVarClusterRef) : BaseIO Unit :=
  (TreeRef.mvarCluster cref).markSubtreeIrrelevant


/-! ### Proven -/

-- A goal is proven if any of its child rapps are proven, or if the goal was
-- proven by normalisation.
def Goal.isProvenByNormalizationNoCache (g : Goal) : Bool :=
  g.normalizationState.isProvenByNormalization

def Goal.isProvenByRuleApplicationNoCache (g : Goal) : BaseIO Bool :=
  g.children.anyM λ rref => return (← rref.get).state.isProven

def Goal.isProvenNoCache (g : Goal) : BaseIO Bool :=
  (return g.isProvenByNormalizationNoCache) <||>
  g.isProvenByRuleApplicationNoCache

-- A rapp is proven if each of its child mvar clusters is proven.
def Rapp.isProvenNoCache (r : Rapp) : BaseIO Bool :=
  r.children.allM λ cref => return (← cref.get).state.isProven

-- An mvar cluster is proven if any of its goals is proven.
def MVarCluster.isProvenNoCache (c : MVarCluster) : BaseIO Bool :=
  c.goals.anyM λ cref => return (← cref.get).state.isProven

private def markProvenCore (root : TreeRef) : BaseIO Unit := do
  /-
  We iterate up the tree, marking nodes as proven according to the rules
  of provenness:
  - A goal is proven if any of its child rapps is proven. Since we're
    iterating up from a proven child rapp, we mark goals as proven
    unconditionally. As a result, all child rapps of the goal become
    irrelevant.
  - A rapp is proven if all its child mvar clusters are proven. We must check
    whether this is the case. If so, the rapp is marked as proven and
    irrelevant. (Its children, being proven, are already marked as
    irrelevant.)
  - An mvar cluster is proven if any of its goals is proven. Since we're
    iterating up from a proven goal, we mark mvar clusters as proven
    unconditionally. As a result, all goals in the mvar cluster become
    irrelevant.
  -/
  preTraverseUp
    (λ gref => do
      let g ← gref.get
      gref.set $
        g.setState GoalState.provenByRuleApplication |>.setIsIrrelevant true
      g.children.forM λ rref => rref.markSubtreeIrrelevant
      return true)
    (λ rref => do
      let r ← rref.get
      if ! (← r.isProvenNoCache) then
        return false
      rref.set $ r.setState NodeState.proven |>.setIsIrrelevant true
      return true)
    (λ cref => do
      let c ← cref.get
      cref.set $ c.setState NodeState.proven |>.setIsIrrelevant true
      c.goals.forM λ gref => gref.markSubtreeIrrelevant
      return true)
    root

def GoalRef.markProvenByNormalization (gref : GoalRef) : BaseIO Unit := do
  let g ← gref.get
  gref.set $ g.setState GoalState.provenByNormalization |>.setIsIrrelevant true
  g.children.forM λ rref => rref.markSubtreeIrrelevant
    -- `g` should not have any children, but better safe than sorry.
  markProvenCore (TreeRef.mvarCluster g.parent)

def RappRef.markProven (rref : RappRef) : BaseIO Unit :=
  markProvenCore (TreeRef.rapp rref)

/-! ### Unprovable -/

-- A goal is unrovable if it is exhausted (i.e. we've applied all applicable
-- rules) and all resulting rule applications are unprovable.
def Goal.isUnprovableNoCache (g : Goal) : BaseIO Bool :=
  pure g.isForcedUnprovable <||> (
    g.isExhausted <&&>
    g.children.allM λ rref => return (← rref.get).state.isUnprovable)

-- A rapp is unprovable if any of its child mvar clusters are unprovable.
def Rapp.isUnprovableNoCache (r : Rapp) : BaseIO Bool :=
  r.children.anyM λ cref => return (← cref.get).state.isUnprovable

-- An mvar cluster is unprovable if all its goals are unprovable.
def MVarCluster.isUnprovableNoCache (c : MVarCluster) : BaseIO Bool := do
  c.goals.allM λ cref => return (← cref.get).state.isUnprovable

private def markUnprovableCore : TreeRef → BaseIO Unit :=
  /-
  We iterate up the tree, marking nodes as unprovable according to the rules
  of unprovability:
  - A goal is unprovable if it is exhausted and all its child rapps are
    unprovable. We must check whether this is the case. If so, the goal
    is marked as unprovable and irrelevant. (Its children, being unprovable,
    are already marked as irrelevant.)
  - A rapp is unprovable if any of its child mvar clusters is unprovable.
    Since we iterate up from an unprovable mvar cluster, we mark rapps as
    unprovable unconditionally. As a result, all mvar clusters of the rapp
    become irrelevant.
  - An mvar cluster is unprovable if all its goals are unprovable. We must
    check whether this is the case. If so, the cluster is marked as unprovable
    and irrelevant. (Its children, being unprovable, are already marked as
    irrelevant.)
  -/
  preTraverseUp
    (λ gref => do
      let g ← gref.get
      if ! (← g.isUnprovableNoCache) then
        return false
      gref.set $ g.setState GoalState.unprovable |>.setIsIrrelevant true
      return true)
    (λ rref => do
      let r ← rref.get
      rref.set $ r.setState NodeState.unprovable |>.setIsIrrelevant true
      r.children.forM λ cref => cref.markSubtreeIrrelevant
      return true)
    (λ cref => do
      let c ← cref.get
      if ! (← c.isUnprovableNoCache) then
        return false
      cref.set $ c.setState NodeState.unprovable |>.setIsIrrelevant true
      return true)

def GoalRef.markUnprovable (gref : GoalRef) : BaseIO Unit := do
  let g ← gref.get
  gref.set $ g.setState GoalState.unprovable |>.setIsIrrelevant true
  g.children.forM λ rref => rref.markSubtreeIrrelevant
  markUnprovableCore (TreeRef.mvarCluster g.parent)

def GoalRef.markForcedUnprovable (gref : GoalRef) : BaseIO Unit := do
  gref.modify (·.setIsForcedUnprovable true)
  gref.markUnprovable

def GoalRef.checkAndMarkUnprovable (gref : GoalRef) : BaseIO Unit :=
  markUnprovableCore (TreeRef.goal gref)


/-! ### Uncached Node States -/

/-
The following functions determine the state of a node (goal/rapp/mvar cluster),
assuming only that the state of the node's children is correct. So they can be
used to verify a tree 'bottom-up'.
-/

def Goal.stateNoCache (g : Goal) : BaseIO GoalState := do
  if g.isProvenByNormalizationNoCache then
    return GoalState.provenByNormalization
  else if ← g.isProvenByRuleApplicationNoCache then
    return GoalState.provenByRuleApplication
  else if ← g.isUnprovableNoCache then
    return GoalState.unprovable
  else
    return GoalState.unknown

def Rapp.stateNoCache (r : Rapp) : BaseIO NodeState := do
  if ← r.isProvenNoCache then
    return NodeState.proven
  else if ← r.isUnprovableNoCache then
    return NodeState.unprovable
  else
    return NodeState.unknown

def MVarCluster.stateNoCache (c : MVarCluster) : BaseIO NodeState := do
  if ← c.isProvenNoCache then
    return NodeState.proven
  else if ← c.isUnprovableNoCache then
    return NodeState.unprovable
  else
    return NodeState.unknown

end Aesop
