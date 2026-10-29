# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cadd463f93896eead9a3990198d6d55d3a59ae0c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cadd463f93896eead9a3990198d6d55d3a59ae0c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLeftRegular.pow](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isleftregular-pow--4afa586bda1ea2499e055382.md) | 31 | `result-track:4afa586bda1ea2499e055382bcff9d2772f31bfe3d8814e9bf06a42a36509645` |
| 2 | `theorem` | [IsRightRegular.pow](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isrightregular-pow--476fe3f5ac16ca42553f27bd.md) | 36 | `result-track:476fe3f5ac16ca42553f27bd77371093cd57e82adacb8c99633195eb449b03e6` |
| 3 | `theorem` | [IsRegular.pow](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isregular-pow--b7d725d82640518df2e790f4.md) | 42 | `result-track:b7d725d82640518df2e790f4ae4a348256b61bff7b3f6e8a45178f2a5679bcb4` |
| 4 | `theorem` | [IsLeftRegular.pow_iff](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isleftregular-pow-iff--ad534f28da30f600c9b9d46e.md) | 47 | `result-track:ad534f28da30f600c9b9d46e0d723fa57a7f9238dbdf4196b0899fdfba057a27` |
| 5 | `theorem` | [IsRightRegular.pow_iff](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isrightregular-pow-iff--468db2e18d0b3e60fbed9aea.md) | 54 | `result-track:468db2e18d0b3e60fbed9aea91ab460ccb7e538c504e09541611fb63621fef4a` |
| 6 | `theorem` | [IsRegular.pow_iff](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isregular-pow-iff--b2e5cdbbb42f5421bc928d9a.md) | 62 | `result-track:b2e5cdbbb42f5421bc928d9aac4829659172d6644c783de7db36b87274c82ede` |
| 7 | `lemma` | [IsLeftRegular.prod](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isleftregular-prod--630fe9960cc8e2314233cac0.md) | 75 | `result-track:630fe9960cc8e2314233cac028630fb27e5218244cc7f6366dda79bef817445a` |
| 8 | `lemma` | [IsRightRegular.prod](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isrightregular-prod--0b66057a78f381fce86b7eb0.md) | 79 | `result-track:0b66057a78f381fce86b7eb02bf044617e2cafa545cf5c96ce8e3d6f6d141de1` |
| 9 | `lemma` | [IsRegular.prod](../../../../../../Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean/declarations/isregular-prod--dcb9c1c90b043e6fd21caf3e.md) | 83 | `result-track:dcb9c1c90b043e6fd21caf3eba387e1231248a9f208fa82a4a0128c0f4dd1ed1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1742bfbb559656f609121718cc1ad3b8a3c845333317b755a6748570cc2f1117 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Pow/Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
