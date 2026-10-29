-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Float.Variant5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Float.Variant5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6","mathematical_subject":"Computation.DataStructures","original_sha256":"5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Json.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers, Mario Carneiro
-/
module

public import Batteries.Data.Float.Basic
public import Lean.Data.Json.FromToJson.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Float.Variant5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6

@[expose] public section

open Lean

instance : ToJson Float where
  toJson x :=
    match x.toRatParts' with
    | none => Json.null
    | some (n, d) =>
      if d < 0 then
        Json.num { mantissa := n * (5^d.natAbs : Nat), exponent := d.natAbs }
      else
        Json.num { mantissa := n * (2^d.natAbs : Nat), exponent := 0 }
