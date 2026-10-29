# Verification target: Liouville Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b3b43100ade222c01088fbb6b0fd31e3fd7f646",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b3b43100ade222c01088fbb6b0fd31e3fd7f646`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.DenomsClearable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Liouville](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/declarations/liouville.md) | 33 | `declaration-track:80a4b4baa567586a961eff79c2cd3e1527d99293dfc24cc4c0ae88355679548d` |
| 2 | `theorem` | [irrational](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/declarations/irrational.md) | 39 | `result-track:bfa322a1011c38132fa5d9dd353cc8e79f312c80988cee6ed7a0cb10a02bc940` |
| 3 | `theorem` | [exists_one_le_pow_mul_dist](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/declarations/exists-one-le-pow-mul-dist.md) | 95 | `result-track:cd2038b5e458638f79a3a1b96cd737cf01251b2b902020fc4f4a4fab2f291d0c` |
| 4 | `theorem` | [exists_pos_real_of_irrational_root](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/declarations/exists-pos-real-of-irrational-root.md) | 123 | `result-track:6ac2a6c5cde5e76843232284cc115cfd26b4262d6294c5dacd5536a2c0d86baf` |
| 5 | `theorem` | [transcendental](../../../../NumberTheory/LiouvilleBasicSourceEdition2.lean/declarations/transcendental.md) | 177 | `result-track:e74e3f11f82863e948d32cc42a40b68d3206b6c409064d072ee5c7f61d5411c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17884415f0de0ced1d260fcd23b5f66430a10a2a172c2c52c241fd73fb9a30a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variantc2f808219299a0f1c4b26fd29555a32fbe24bc9969ad809346127ecbe9ef0d8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
