# Verification target: ZPowers Lemmas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab4af60abf69c067aff850269b07eb3e84b56e97",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab4af60abf69c067aff850269b07eb3e84b56e97`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Finsupp` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_zpowersHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/range-zpowershom.md) | 43 | `result-track:7f3ba62ce9e5f6dc985d20736105b4f125cfe3070469efb1a05b908137643a0b` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/instance.md) | 46 | `declaration-track:41b3cbd32a5fedbf084be2a6cfa5f2a88ac60fb1b5ca6acf7ea33d9cba2d7496` |
| 3 | `theorem` | [finsetSup_zpowers](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/finsetsup-zpowers.md) | 49 | `result-track:9ff09ea0c0561aa4ecdcd485fdc9bd4d2a9e6933f63f962df9243b2a9de20b68` |
| 4 | `theorem` | [range_zmultiplesHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/range-zmultipleshom.md) | 58 | `result-track:95d08768e054b2d66918c505b5a1639ed39d29656f567ccd13b1f387fd25c2da` |
| 5 | `theorem` | [intCast_mul_mem_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/intcast-mul-mem-zmultiples.md) | 66 | `result-track:383c4e8eb017b526a4b659485e33d9d284df8be1faf785fc31fcf75ba5af7b8d` |
| 6 | `theorem` | [intCast_mem_zmultiples_one](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/intcast-mem-zmultiples-one.md) | 70 | `result-track:3af40ca35a5f84c12ccfec8c002b5fd84d8bcf04e7e1b37abcfe931d43563e91` |
| 7 | `lemma` | [range_castAddHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/range-castaddhom.md) | 81 | `result-track:d559e38be33e9ee78ae6b69ac6d1a56c46d5e02ac86128f6864967e03b3b8e7b` |
| 8 | `lemma` | [range_nsmulAddMonoidHom](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/range-nsmuladdmonoidhom.md) | 86 | `result-track:261d59831b93d55edd6fcd31859fbe130dfe875a0686096f7e4fcf38809f31c9` |
| 9 | `theorem` | [closure_eq_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/closure-eq-zmultiples.md) | 91 | `result-track:e44895ea58129cfab0aca36a5a49fdb6873900ff312c105f76e87e947ff9e063` |
| 10 | `theorem` | [closure_eq_zmultiples_finsetGcd](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/closure-eq-zmultiples-finsetgcd.md) | 96 | `result-track:cf4d422e8f31a678ad046fbe3e2bf9f43a78f40d5bc046134df7881d23313429` |
| 11 | `theorem` | [zmultiples_sup](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/zmultiples-sup.md) | 104 | `result-track:6e7bf947b6826762dfcb4d47f0278512bdc76df4ae1932b5bbfd163e2b924311` |
| 12 | `theorem` | [finsetSup_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/finsetsup-zmultiples.md) | 107 | `result-track:5df7855622ba5496e9bb25d88980bf6a5200a162fa49f37b4675b91f6ffbdfc9` |
| 13 | `theorem` | [zmultiples_inf](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/zmultiples-inf.md) | 110 | `result-track:0a5f20fdd14e20387afba3f0fb73bfd9e7357c84ab1ead44bff6cf5eafeaed73` |
| 14 | `theorem` | [finsetInf_zmultiples](../../../../GroupTheoryAndGeneralizations/ZPowersLemmasNamespacedPublic.lean/declarations/finsetinf-zmultiples.md) | 114 | `result-track:bbf64cd2826ee28beebdc306e9482043db4cece013affdeea7a67b4bdcc99e4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f06e3224e4da57c816107673c15b5a97842dff5813fcf7d4e63fa56f91ebac48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
