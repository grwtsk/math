-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Logic.Variant74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Logic.Variant74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Testing/Plausible/Testable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
module

public meta import Mathlib.Basic.Logic.Basic
public meta import Plausible.Testable

public import Mathlib.Tactic.Basic
public import Plausible.Gen
public import Plausible.Testable

/-!
This module contains `Plausible.Testable` and `Plausible.PrintableProb` instances for mathlib types.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Logic.Variant74c3b4dde874a9b0928dc77202992e0327b04f78a964d954814f78bcad52c8f0

public section

namespace Plausible

namespace Testable

open TestResult

meta instance factTestable {p : Prop} [Testable p] : Testable (Fact p) where
  run cfg min := do
    let h ← runProp p cfg min
    pure <| iff fact_iff h

end Testable

section PrintableProp

meta instance Fact.printableProp {p : Prop} [PrintableProp p] : PrintableProp (Fact p) where
  printProp := printProp p

end PrintableProp

end Plausible
