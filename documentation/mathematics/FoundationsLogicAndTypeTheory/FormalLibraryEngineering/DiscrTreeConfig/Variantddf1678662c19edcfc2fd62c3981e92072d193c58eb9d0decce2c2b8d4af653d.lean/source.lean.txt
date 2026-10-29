-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexConfig.Variantd816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IndexConfig.Variantd816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Index/DiscrTreeConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic
public import Lean.Meta.DiscrTree.Types
import Lean.Meta.DiscrTree.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexConfig.Variantd816388c2f73d1e51b6c84e41a79521fff82f606140ec4004a2ccf52f5bd91b7

public section

namespace Aesop

open Lean Lean.Meta

/-- The configuration used by all Aesop indices. -/
-- I don't really know what I'm doing here. I'm just copying the config used
-- by `simp`; see `Meta/Simp/Types.lean:mkIndexConfig`.
def indexConfig : ConfigWithKey :=
  ({ proj := .no, transparency := .reducible : Config }).toConfigWithKey

def mkDiscrTreePath (e : Expr) : MetaM (Array DiscrTree.Key) :=
  withConfigWithKey indexConfig $ DiscrTree.mkPath e

def getUnify (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getUnify e

def getMatch (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getMatch e

end Aesop
