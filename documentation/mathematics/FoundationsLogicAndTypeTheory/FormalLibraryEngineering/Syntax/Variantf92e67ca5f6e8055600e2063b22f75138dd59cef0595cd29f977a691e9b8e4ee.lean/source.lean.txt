-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetArgs.Variantf424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SetArgs.Variantf424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module
prelude
public import Init.Prelude
import Init.Data.Array.Set

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetArgs.Variantf424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55

public section

/-!
# Helper functions for `Syntax`.

These are delayed here to allow some time to bootstrap `Array`.
-/

namespace Lean.Syntax

/--
Updates the argument list without changing the node kind.
Does nothing for non-`node` nodes.
-/
def setArgs (stx : Syntax) (args : Array Syntax) : Syntax :=
  match stx with
  | node info k _ => node info k args
  | stx           => stx

/--
Updates the `i`'th argument of the syntax.
Does nothing for non-`node` nodes, or if `i` is out of bounds of the node list.
-/
def setArg (stx : Syntax) (i : Nat) (arg : Syntax) : Syntax :=
  match stx with
  | node info k args => node info k (args.setIfInBounds i arg)
  | stx              => stx

end Lean.Syntax
