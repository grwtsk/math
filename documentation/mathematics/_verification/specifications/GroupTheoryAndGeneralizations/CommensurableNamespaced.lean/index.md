# Verification target: Commensurable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "029082b78d5450d57c79dd391037913afccc0356",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `029082b78d5450d57c79dd391037913afccc0356`.

Source path: `GRWTSK/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Index` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Commensurable](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurable.md) | 43 | `declaration-track:a79f881998f44d228b9ca7e1e969cb32f6a69616be9d484fec59227942df437e` |
| 2 | `theorem` | [refl](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/refl.md) | 51 | `result-track:bbc34b664624a1e37ec970bab82b4fb1d4ff1f31898ec4fca670d8ae93806e4a` |
| 3 | `theorem` | [comm](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/comm.md) | 53 | `result-track:ca4c3662ff087612b9269d5a086994bffa8df7913c67f70d8abcc4e58cc26148` |
| 4 | `theorem` | [symm](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/symm.md) | 56 | `result-track:2a2ec2162ee1354396dcddd6f9a9f4844d37c58d53f1d8712954d583bbc8ea17` |
| 5 | `theorem` | [trans](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/trans.md) | 59 | `result-track:02d2017dd0a021552acd695e5af2aaef9c0b4b4a1dc1bc2575b3618f31f06083` |
| 6 | `theorem` | [equivalence](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/equivalence.md) | 63 | `result-track:817c568ec7332bbad69c44bfbfcb6b3ef24a9c0bca5549d8b7b0337bb504b596` |
| 7 | `def` | [quotConjEquiv](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/quotconjequiv.md) | 67 | `declaration-track:16468ed9e4b2bc942fc38b5a408dffe8c95ebbf13cb07a5806f7652c84d4f412` |
| 8 | `theorem` | [commensurable_conj](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurable-conj.md) | 76 | `result-track:6b51b5a5b6a0a2041d047cf7b1cc0b9f444adeb9e4caa1a83766087195d6d65c` |
| 9 | `theorem` | [commensurable_inv](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurable-inv.md) | 81 | `result-track:0c244003bb4a5735c07307e6191ba6a2945508b8861add768ed4900052126cff` |
| 10 | `def` | [commensurator'](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurator.md) | 86 | `declaration-track:bbf6ce9f0bcc92820457c60054b5214f3ced0370afb48b88c0c48814090ef934` |
| 11 | `def` | [commensurator](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurator-source-edition-2.md) | 96 | `declaration-track:eb205a78752622d150a7eeab10f0d15ff555faff012d1c6a874e24f6597f1717` |
| 12 | `theorem` | [commensurator'_mem_iff](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurator-mem-iff-source-edition-2.md) | 100 | `result-track:7c1ae7cf5b423e422d5a6dc5bb2da2330bc0b0da83d549beb9392cb9a69aa64d` |
| 13 | `theorem` | [commensurator_mem_iff](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/commensurator-mem-iff.md) | 104 | `result-track:65b86d4962094060ccc2739637e562c28c7a82608553536aad9b9e0b51b97fba` |
| 14 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/CommensurableNamespaced.lean/declarations/eq.md) | 107 | `result-track:cda2ffbb35e55195b8a41eef1851d7b6985c747a2e059145050a976bcd9d0a1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=530f12433a0109584e3a8b4034b147a88068dbb490362cf5aa23bb51afb653ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
