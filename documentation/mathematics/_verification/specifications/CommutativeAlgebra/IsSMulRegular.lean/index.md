# Verification target: Is SMul Regular

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3289d8a618354aafa6dc0363c08b40d3a15db7e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsSMulRegular.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsSMulRegular.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3289d8a618354aafa6dc0363c08b40d3a15db7e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.AssociatedPrime.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.QuotSMulTop` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearEquiv.isSMulRegular_congr'](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/linearequiv-issmulregular-congr-source-edition-2.md) | 32 | `result-track:89d29c4dc8b83fb4831149463ecae04c481fe3fb46cbfb0fbded4314907a3331` |
| 2 | `lemma` | [LinearEquiv.isSMulRegular_congr](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/linearequiv-issmulregular-congr.md) | 36 | `result-track:0e17246efdae2e007db869d64eda2e5ef3e8aa526e2e7936ac5113f9e779407e` |
| 3 | `lemma` | [IsSMulRegular.submodule](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-submodule.md) | 44 | `result-track:661ede6d5c79af3ce1d4229d41f9969ba22b6a085bda9bb8f889aad2d627e24d` |
| 4 | `lemma` | [IsSMulRegular.lTensor](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-ltensor.md) | 57 | `result-track:86b8739f9f5c4ecef87486f1246c8ca056540556978bb0fe291befc99017356e` |
| 5 | `lemma` | [IsSMulRegular.rTensor](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-rtensor.md) | 61 | `result-track:c35dd465130812a7602111d4ab59a4d0185335273932bb9592ea53dba2b9bc44` |
| 6 | `lemma` | [isSMulRegular_algebraMap_iff](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-algebramap-iff.md) | 67 | `result-track:c41cae54ca3a3bb5fe7e88cf45ff1bb00016ba962ea8817c9e804904e35c07a4` |
| 7 | `lemma` | [isSMulRegular_iff_smul_eq_zero_imp_eq_zero](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-iff-smul-eq-zero-imp-eq-zero.md) | 78 | `result-track:d668abb36952d711ff1e6611eb2c68ab5390fded9496404ad68648014aac4c2c` |
| 8 | `lemma` | [isSMulRegular_iff_mem_nonZeroSMulDivisors](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-iff-mem-nonzerosmuldivisors.md) | 83 | `result-track:55f4acae0c4769b1e7c57b58bcb652aa158c3cd3551dded4d1a8a604f07e3c45` |
| 9 | `lemma` | [isSMulRegular_of_smul_eq_zero_imp_eq_zero](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-of-smul-eq-zero-imp-eq-zero.md) | 89 | `result-track:55932d7edff2e427b08d074af220650e37073e8664d213ceb69c96eb99a6f244` |
| 10 | `lemma` | [isSMulRegular_on_submodule_iff_mem_imp_smul_eq_zero_imp_eq_zero](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-on-submodule-iff-mem-imp-smul-eq-zero-imp-eq-zero.md) | 95 | `result-track:4fbf499ff9f01ac0561c414052a80934e65b6d631676db29749742d61911667a` |
| 11 | `lemma` | [isSMulRegular_on_quot_iff_smul_mem_implies_mem](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-on-quot-iff-smul-mem-implies-mem.md) | 101 | `result-track:93561699da4cfdea69f10c3f28be0c3ebce84e1b5cefbf81ec0ad3890c0f1f44` |
| 12 | `lemma` | [mem_of_isSMulRegular_on_quot_of_smul_mem](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/mem-of-issmulregular-on-quot-of-smul-mem.md) | 109 | `result-track:56dca4b02660568c130d1c6a0e4f33cbe89f9e7820a8d9349f722096a502c867` |
| 13 | `lemma` | [isSMulRegular_of_range_eq_ker](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-of-range-eq-ker.md) | 115 | `result-track:0c08029065d370c7d5265417e937f44b24d167711b4544d1291daf5de68a6970` |
| 14 | `lemma` | [isSMulRegular_of_isSMulRegular_on_submodule_on_quotient](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-of-issmulregular-on-submodule-on-quotient.md) | 126 | `result-track:e9cb559b1ef4cfc0f92b6e8325762348798c049051be7cf6a9c5823642e0a340` |
| 15 | `lemma` | [biUnion_associatedPrimes_eq_compl_regular](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/biunion-associatedprimes-eq-compl-regular.md) | 142 | `result-track:f3f7dbdb655c6154fa4a552ec305695e42fe3ddbb6701e07a2a94443d1090c52` |
| 16 | `lemma` | [isSMulRegular_iff_ker_lsmul_eq_bot](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-iff-ker-lsmul-eq-bot.md) | 148 | `result-track:c572ed4a3a7f7279df4f80c931f8c2afc836b92c9504318cf8bf58172511c18a` |
| 17 | `lemma` | [isSMulRegular_on_submodule_iff_disjoint_ker_lsmul_submodule](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-on-submodule-iff-disjoint-ker-lsmul-submodule.md) | 154 | `result-track:84d13858e906bd781767ead10850839898429a069aea3f2953718aac7c97d78c` |
| 18 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_le](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-le.md) | 159 | `result-track:d5b6f1d077fed932a4f4f5fdb261f3edddebc8b21d2ba0b0e92323f4ce2dc4d9` |
| 19 | `lemma` | [isSMulRegular_on_quot_iff_lsmul_comap_eq](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-on-quot-iff-lsmul-comap-eq.md) | 163 | `result-track:3a29573023f0d2dc531e8c51c0879f30efd25983d084908608327c35505bf6d0` |
| 20 | `lemma` | [IsSMulRegular.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-issmulregular-on-quot-iff-smul-top-inf-eq-smul.md) | 170 | `result-track:c72588a8641164246d5864780d05c00cc81be4c8ceb534bf4c3d509d5e1bcdbb` |
| 21 | `lemma` | [isSMulRegular_of_ker_lsmul_eq_bot](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/issmulregular-of-ker-lsmul-eq-bot.md) | 177 | `result-track:ea27a2870c1d238dfde226855814897012bba7a502d3e384808c6b271c7ea55b` |
| 22 | `lemma` | [smul_top_inf_eq_smul_of_isSMulRegular_on_quot](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/smul-top-inf-eq-smul-of-issmulregular-on-quot.md) | 183 | `result-track:b8ec286aabdc5486c7b202dfb1415859ff5bb877ca558a34345066d6e0af972e` |
| 23 | `lemma` | [QuotSMulTop.map_first_exact_on_four_term_exact_of_isSMulRegular_last](../../../../CommutativeAlgebra/IsSMulRegular.lean/declarations/quotsmultop-map-first-exact-on-four-term-exact-of-issmulregular-last.md) | 190 | `result-track:75af158c98385e749dc2990c056f89f5bbad92b9c7e4554df34287fd1d1520d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37be982e0feb7a971802e5c2e0a3241973a3328dd804d9fc8f5198cd315e258c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IsSMulRegular/Variant3a870375661169fef2750bb0afffe044c61932fd3d9d0f2fe6f05a858edc9fa4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
