# Verification target: Perm Finite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52a2472633b6b6edb712c1db4dc6bfd85c5f808f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant4bfc323ccf767bf06fa0f80f80d9c6fd688e7f7d352d4d3ea25cc56c718ee22c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52a2472633b6b6edb712c1db4dc6bfd85c5f808f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant4bfc323ccf767bf06fa0f80f80d9c6fd688e7f7d352d4d3ea25cc56c718ee22c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant4bfc323ccf767bf06fa0f80f80d9c6fd688e7f7d352d4d3ea25cc56c718ee22c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isConj_of_support_equiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/isconj-of-support-equiv.md) | 39 | `result-track:66a820520f9d4f724afcc723dc390740694cd49553f997d794194d8128c2b403` |
| 2 | `theorem` | [perm_symm_on_of_perm_on_finset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/perm-symm-on-of-perm-on-finset.md) | 56 | `result-track:d70874bb4e027df71a97747cea2ab7fdd669acd04b82e0c98abbaaa544e23ec5` |
| 3 | `theorem` | [perm_symm_mapsTo_of_mapsTo](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/perm-symm-mapsto-of-mapsto.md) | 64 | `result-track:b8a6fd7ae73934f23b949baaef46c4adaf0dfe50222cfaadb32860560786ee9e` |
| 4 | `theorem` | [perm_symm_mapsTo_iff_mapsTo](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/perm-symm-mapsto-iff-mapsto.md) | 74 | `result-track:a1849183a7fa43aaf86bc99007f910cfdc567b06f557d7e252b09f24832d6236` |
| 5 | `theorem` | [perm_symm_on_of_perm_on_finite](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/perm-symm-on-of-perm-on-finite.md) | 78 | `result-track:aca56e453599d1c6f75de84689ab30711c5f3f8b04a2f114afb1f435eeed99cf` |
| 6 | `abbrev` | [subtypePermOfFintype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/subtypepermoffintype.md) | 86 | `declaration-track:fb3cfd7f5d5cd216d32499958f822775b33249b085f78d8c9b4d5efdd1181de5` |
| 7 | `theorem` | [subtypePermOfFintype_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/subtypepermoffintype-apply.md) | 91 | `result-track:89baa60b7e01beb3da70e90207196d87d3e0966dc38800319b5b3151c6693d50` |
| 8 | `theorem` | [subtypePermOfFintype_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/subtypepermoffintype-one.md) | 95 | `result-track:04354389798f245407fe90e53fab47a45321dd237db4464a43176a3a1f38bb9f` |
| 9 | `theorem` | [perm_mapsTo_inl_iff_mapsTo_inr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/perm-mapsto-inl-iff-mapsto-inr.md) | 99 | `result-track:2b4edfe0690a16f7f0aeec3b8bfc39bdc302e32527cfe92a2e06019b5dec8832` |
| 10 | `theorem` | [mem_sumCongrHom_range_of_perm_mapsTo_inl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/mem-sumcongrhom-range-of-perm-mapsto-inl.md) | 118 | `result-track:fd10dc41414db7516f286bb2680b0a4df4fa241f81f220449645d275056858fa` |
| 11 | `theorem` | [Disjoint.orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-orderof.md) | 140 | `result-track:fbf01054cfb97b56bec63108d65d201fa89412f16bcbccf9623fb05e16c3cc11` |
| 12 | `theorem` | [Disjoint.extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-extenddomain.md) | 149 | `result-track:7a8a0903a29690d6339f9097fa931f431138481b65955316b85ddc9c66ec2ec9` |
| 13 | `theorem` | [Disjoint.isConj_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-isconj-mul.md) | 160 | `result-track:ae3f4dc5dc3ff9bd1f34dcd2b5009e7afa895c63361b83dc46a108527cfdb6fc` |
| 14 | `theorem` | [apply_mem_fixedPoints_iff_mem_of_mem_centralizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/apply-mem-fixedpoints-iff-mem-of-mem-centralizer.md) | 205 | `result-track:45287faee9b8ddc74a044aaa4e05cb7dad7138e50101413463ac007813ff3053` |
| 15 | `lemma` | [disjoint_ofSubtype_of_memFixedPoints_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-ofsubtype-of-memfixedpoints-self.md) | 214 | `result-track:316b59457a298691d7b25861d243352464e7fadd19c59c0a64dbfb3ac39a4c55` |
| 16 | `theorem` | [support_pow_coprime](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/support-pow-coprime.md) | 227 | `result-track:6fea2b08a6e7c7e452d102679a315a204f4ed2e49417c54a03018afe3b6e515c` |
| 17 | `lemma` | [ofSubtype_support_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/ofsubtype-support-disjoint.md) | 234 | `result-track:6e148af78c54d50fb57b7c0dc1bf6ad9a795a2055dd2470aad13a518969f7eb7` |
| 18 | `lemma` | [disjoint_of_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-of-disjoint-support.md) | 243 | `result-track:800f05537c0030901377953f0063d062e0d2aef689e0d7d5bead1021f09e75a7` |
| 19 | `lemma` | [support_closure_subset_union](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/support-closure-subset-union.md) | 251 | `result-track:d295b85ee198b79c274912b6f26f8c76687891773bbf384f9e0c38a643160c74` |
| 20 | `lemma` | [disjoint_support_closure_of_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-support-closure-of-disjoint-support.md) | 262 | `result-track:e73656d64681a5214276a206522787635eae610372253ec1dcacdcdaf1413426` |
| 21 | `lemma` | [disjoint_closure_of_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/disjoint-closure-of-disjoint-support.md) | 272 | `result-track:1f77817c48c9bf3e621c8cca3d0eb3aa20d686be84d644fe28d82b6a31806070` |
| 22 | `theorem` | [mem_range_ofSubtype_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFinitePublic.lean/declarations/mem-range-ofsubtype-iff.md) | 279 | `result-track:4061096b8fd85fa0c032ef46c1eaf0e9cf3eca0fd4588b6e511564a543c7c9f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=326937e85fd473c537a005cd15a03a337616ec70bb43006a5175349f3ad1a84b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant4bfc323ccf767bf06fa0f80f80d9c6fd688e7f7d352d4d3ea25cc56c718ee22c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant4bfc323ccf767bf06fa0f80f80d9c6fd688e7f7d352d4d3ea25cc56c718ee22c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
