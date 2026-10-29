# Verification target: Nonunits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b447e885ba53f8ff4c7eba469a4ce4a9b8854ca0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nonunits/Variant6f6e7ef819c9cd0aa2739fb661a5a896f590cb765f38a757871af02266dce614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b447e885ba53f8ff4c7eba469a4ce4a9b8854ca0`.

Source path: `GRWTSK/Algebra/Nonunits/Variant6f6e7ef819c9cd0aa2739fb661a5a896f590cb765f38a757871af02266dce614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nonunits/Variant6f6e7ef819c9cd0aa2739fb661a5a896f590cb765f38a757871af02266dce614.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maximal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/nonunits.md) | 32 | `declaration-track:13da934114fb34eb40c11bb7d9f31d803e756d4df4cab1862a62eceeec368271` |
| 2 | `theorem` | [mem_nonunits_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/mem-nonunits-iff.md) | 36 | `result-track:c76fe0bb9a4e5bd4a7681b724141c89b551730019840676ebbc06b34a5b534aa` |
| 3 | `theorem` | [mul_mem_nonunits_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/mul-mem-nonunits-right.md) | 39 | `result-track:c0e5e87dc940519f225a018407b22e6ed32dde966bfd5502737d76778a4b707f` |
| 4 | `theorem` | [mul_mem_nonunits_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/mul-mem-nonunits-left.md) | 42 | `result-track:c54cf3e874adfa95bbd7cf8b77bc414375ed85179bf041b6574f1314edfe6bc0` |
| 5 | `theorem` | [zero_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/zero-mem-nonunits.md) | 45 | `result-track:8b2ed69a5b918a3957603ebc89274e88ea71480ef02f804fbe3b8e14109b0aab` |
| 6 | `theorem` | [one_notMem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/one-notmem-nonunits.md) | 49 | `result-track:07cc1bb90dcf43b73543ba33946fc2a752dd72578d2e1fdb10dbbf93192c90c4` |
| 7 | `theorem` | [map_mem_nonunits_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/map-mem-nonunits-iff.md) | 56 | `result-track:beccd3c495044803bf7d98beb54357434cab77609121e41e0d0040cadcdd3cca` |
| 8 | `theorem` | [coe_subset_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/coe-subset-nonunits.md) | 60 | `result-track:46802e2bc6976ef0b2f1a5596da635bec025c7aa234d613c78bf96c127891cb6` |
| 9 | `theorem` | [exists_max_ideal_of_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/NonunitsNamespaced.lean/declarations/exists-max-ideal-of-mem-nonunits.md) | 63 | `result-track:38ce897ba6cb02466b4877a67f920de6dca422300f2622a0c7dda795f886c25e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c02fed5d5d88c68f4d48c2b307f50741e1a2435668f436e09d518b724c7ee8c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Nonunits/Variant6f6e7ef819c9cd0aa2739fb661a5a896f590cb765f38a757871af02266dce614.lean","GRWTSK/_verification/specifications/Algebra/Nonunits/Variant6f6e7ef819c9cd0aa2739fb661a5a896f590cb765f38a757871af02266dce614.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
