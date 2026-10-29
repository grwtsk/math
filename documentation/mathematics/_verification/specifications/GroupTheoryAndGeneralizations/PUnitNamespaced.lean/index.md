# Verification target: PUnit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1a53a197481af1dde52214b37bbf25dacfc6c48",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PUnit/Variant7ce71ec7212838a58c5e0f72ede31ac98a3f77f1a0e65b51da627c61ee81c1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1a53a197481af1dde52214b37bbf25dacfc6c48`.

Source path: `GRWTSK/Algebra/GroupTheory/PUnit/Variant7ce71ec7212838a58c5e0f72ede31ac98a3f77f1a0e65b51da627c61ee81c1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PUnit/Variant7ce71ec7212838a58c5e0f72ede31ac98a3f77f1a0e65b51da627c61ee81c1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/commgroup.md) | 28 | `declaration-track:9756a84db61777a253bccaff978b7170035cc091b9f2b8882691b9248fda4d68` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/instance-source-edition-4.md) | 42 | `declaration-track:85f79f49fc0b1d432947624405221ddffee23da82b9ccb62d7eace074c32d73b` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:27e68a2cdb948e7f371a0f082966d16f40148a14b3bf88788f5f6e01c8e9abb6` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:495593525337b4ca26b729bddcd0578e5a76696152c193a8ce0982bae304348d` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/instance.md) | 45 | `declaration-track:191df435616d4abe7e69381dc40aaf8cd6d1451cd0c6b7f863aafdcbccdb66ff` |
| 6 | `lemma` | [one_eq](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/one-eq.md) | 47 | `result-track:f4dafd4b5bf7acc3f84c74c23e6a401f0875cb4e90eedd6648d032bf43c21890` |
| 7 | `lemma` | [mul_eq](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/mul-eq.md) | 50 | `result-track:933a0648f94d190f9be890d4c2eeb16c4980d7ada314dc6eb6cf1b2b51acf45e` |
| 8 | `lemma` | [div_eq](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/div-eq.md) | 52 | `result-track:40c72e18146e761dac169846d2c71ede9d6ee39cb8ea85370314b5152bf9c3a7` |
| 9 | `lemma` | [inv_eq](../../../../GroupTheoryAndGeneralizations/PUnitNamespaced.lean/declarations/inv-eq.md) | 53 | `result-track:e1801df0d901ef387429b0b6c698183d371c699f31ac0dc238fe755f267554e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15fca5446a22e96a87a28d18431c82aa7461464d158981b5342c56ed683869e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/PUnit/Variant7ce71ec7212838a58c5e0f72ede31ac98a3f77f1a0e65b51da627c61ee81c1d5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/PUnit/Variant7ce71ec7212838a58c5e0f72ede31ac98a3f77f1a0e65b51da627c61ee81c1d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
