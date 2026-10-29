-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant91e68ee521f325814dae69aed5e4aac6168934e3e43f0601a70f0db7c698cc76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91e68ee521f325814dae69aed5e4aac6168934e3e43f0601a70f0db7c698cc76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Link.Variant91e68ee521f325814dae69aed5e4aac6168934e3e43f0601a70f0db7c698cc76","mathematical_subject":"Computation.DataStructures","original_sha256":"91e68ee521f325814dae69aed5e4aac6168934e3e43f0601a70f0db7c698cc76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/AlgebraSubsumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Algebra
import Mathematics.Boolean.Formula.Corpus

/-!
# Formula-algebra subsumption

All nineteen declarations in `Algebra/Formula.lean` are routed to compiled
formula operations or semantic-equivalence theorems.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variant91e68ee521f325814dae69aed5e4aac6168934e3e43f0601a70f0db7c698cc76

namespace Mathematics.Boolean.Formula.AlgebraSubsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (relation : CorpusSubsumptionRelation) :
    CorpusSubsumptionLink :=
  Corpus.algebraModule.subsumption
    { value := "ideas:boolean-formula:algebra:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    kind
    digest
    digest_valid
    target
    target_nonempty
    relation
    "Interpret free formula operations through semantic equivalence."

def join := link 0 "join" (by decide) .abbrev
  { value := "6fda94e2d1d9f581b48b8dc84ec10551506495ce8fa9cd80b3507debc59a75f1" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join" (by decide) .definitionReconstruction

def meet := link 1 "meet" (by decide) .abbrev
  { value := "4d71112482dfe661cb98f35bd755ad0bc1b5677b88df16766aff0e53ebef71d4" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet" (by decide) .definitionReconstruction

def complement := link 2 "compl" (by decide) .abbrev
  { value := "6c7d03c4a455716124605ce6015326b5515577b6caf2d46b5a73cae775293b41" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.compl" (by decide) .definitionReconstruction

def bottom := link 3 "bot" (by decide) .abbrev
  { value := "60f6f12920dc8e01f1c3ea43e23bd6e4f11b7438a9de6568fa168d78f26c521f" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.bot" (by decide) .definitionReconstruction

def top := link 4 "top" (by decide) .abbrev
  { value := "eeae0d0bbbe78ef4f7e0e6b982acf72c8408238cb87ae959330f295ebe549188" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.top" (by decide) .definitionReconstruction

def joinBot := link 5 "join_bot" (by decide) .theorem
  { value := "c825a626a52301e5fe1ebddec2ebc2ade26f6f047c01ba00e75faea00cde0624" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join_bot" (by decide) .theoremReconstruction

def meetTop := link 6 "meet_top" (by decide) .theorem
  { value := "344a47e14e2c598d80ee4aada52d3382270e2e9e7892f63da3d0b82380c67768" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet_top" (by decide) .theoremReconstruction

def joinIdempotent := link 7 "join_idem" (by decide) .theorem
  { value := "b61f964458bc6a4ba505dc4fa29d88c2b75d1438aae0cceae0db2d9beeada94e" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join_idem" (by decide) .theoremReconstruction

def meetIdempotent := link 8 "meet_idem" (by decide) .theorem
  { value := "54c45ab33a42dad16a27ccb25e225f432bfcabe2a81e56feb57af8d767bc7630" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet_idem" (by decide) .theoremReconstruction

def joinTop := link 9 "join_top" (by decide) .theorem
  { value := "56989b9acf6300a4fc291c4e90288350657506d909dbc19816ad9f786371c6bf" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join_top" (by decide) .theoremReconstruction

def meetBottom := link 10 "meet_bot" (by decide) .theorem
  { value := "0691c616c0e85fb21192e3b5db1e875965b3d130b2d7942a4877abbdb7a5b284" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet_bot" (by decide) .theoremReconstruction

def joinAbsorption := link 11 "join_absorb" (by decide) .theorem
  { value := "2d6ba611c66e6d1220e0d79eb2c030fa3be7c3693c5f7844612af8930f73803e" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join_absorb" (by decide) .theoremReconstruction

def meetAbsorption := link 12 "meet_absorb" (by decide) .theorem
  { value := "4ca8e6c652dc1fa719b79fd3490420ad8014fb5a822c37674166173cd038d7ed" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet_absorb" (by decide) .theoremReconstruction

def joinMeetDistributive := link 13 "join_meet_distrib" (by decide) .theorem
  { value := "3d29203cbf364a8344a2929118a434a81fb87059ce5f9fb4a9a5f52e6491cf49" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join_meet_distrib" (by decide) .theoremReconstruction

def meetJoinDistributive := link 14 "meet_join_distrib" (by decide) .theorem
  { value := "138e4cd09c32d86556b657d6118eabf21d41b1fb116603234aa763e8a21b3824" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet_join_distrib" (by decide) .theoremReconstruction

def joinComplement := link 15 "join_compl" (by decide) .theorem
  { value := "ba0cca3b174169cc513b1dc9ad8d7412e3d855b1d0aade949adbb268051cc348" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.join_compl" (by decide) .theoremReconstruction

def meetComplement := link 16 "meet_compl" (by decide) .theorem
  { value := "70c49a1060dcc4bd0743545ca4b2e9c86853db761627f981d1bb767d7d2dd5e6" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.meet_compl" (by decide) .theoremReconstruction

def complementUnique := link 17 "compl_unique" (by decide) .theorem
  { value := "edb35d599754a4d62c9f3ce30564424aeed3e977bf9205d14d898e6e06c9b9cf" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.compl_unique" (by decide) .theoremReconstruction

def bottomNotTop := link 18 "bot_ne_top" (by decide) .theorem
  { value := "7826314787eb2e369f9d02c362d410dbe03a184d69d99e2a6602a913b48deea2" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.Formula.bot_ne_top" (by decide) .theoremReconstruction

def links : List CorpusSubsumptionLink := [
  join,
  meet,
  complement,
  bottom,
  top,
  joinBot,
  meetTop,
  joinIdempotent,
  meetIdempotent,
  joinTop,
  meetBottom,
  joinAbsorption,
  meetAbsorption,
  joinMeetDistributive,
  meetJoinDistributive,
  joinComplement,
  meetComplement,
  complementUnique,
  bottomNotTop
]

@[simp] theorem links_length : links.length = 19 := by decide

end Mathematics.Boolean.Formula.AlgebraSubsumption
