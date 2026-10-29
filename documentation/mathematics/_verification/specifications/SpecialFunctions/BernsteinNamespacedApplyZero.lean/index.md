# Verification target: Bernstein Namespaced Apply Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c30244dc17291af4c94971f159a59acefacb0d06",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/index.md) · [Full source](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c30244dc17291af4c94971f159a59acefacb0d06`.

Source path: `GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Bernstein` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Polynomial` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernstein](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/bernstein.md) | 66 | `declaration-track:ea2e947eb5c46df2b2dfb299c19f66c6be362d0d08e7a62146d172cae28ad3c4` |
| 2 | `theorem` | [bernstein_apply](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/bernstein-apply.md) | 69 | `result-track:29f9509f7c2375084018ad21781aa65ce09a16be65bd1e02422b81b5ba96beeb` |
| 3 | `theorem` | [bernstein_nonneg](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/bernstein-nonneg.md) | 75 | `result-track:3de58234f70ef3afb4ce851cd7cd58e147bdbc7d18f1e3486c089d141e48dc39` |
| 4 | `def` | [evalBernstein](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/evalbernstein.md) | 87 | `declaration-track:ea5552bf415e3efd169c8dcd0b3301bae6c9399afbcd1d9082685264a3bdc39b` |
| 5 | `def` | [z](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/z.md) | 103 | `declaration-track:11ef34b9a43d1c8e8cf823f431c34adf0b35793c36a7f3ca9f7e1255a5d23d16` |
| 6 | `lemma` | [z_zero](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/z-zero.md) | 108 | `result-track:b762370ee8a1bf977bf4cf42d763bea75ff6eb48554c5a1100868b0ef8e0ff8a` |
| 7 | `lemma` | [z_last](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/z-last.md) | 109 | `result-track:3bf24ee8c9e1e638cf4ecc695637ccddc4c414a0ed8ca779900eef841c8af205` |
| 8 | `theorem` | [probability](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/probability.md) | 112 | `result-track:f8267113d958ee279192ff351d443e364557d44d001ff14397d0ca3737e3be6f` |
| 9 | `theorem` | [variance](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/variance.md) | 119 | `result-track:98faf3c467ae21554365fa6d3b7f19011f465b5e5a48ab7971f92bf97cfb8275` |
| 10 | `def` | [bernsteinApproximation](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/bernsteinapproximation.md) | 137 | `declaration-track:0e697f9527ee74a3c4dfe4d08d745cf639fa2ffcb1716107acbb0ed0d138229c` |
| 11 | `theorem` | [apply](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/apply.md) | 156 | `result-track:612d07f7b102e2645cdbe8db35fdaef87963d686505dbd218f19eced2fd30d3e` |
| 12 | `theorem` | [apply_zero](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/apply-zero.md) | 161 | `result-track:dd2c47a3b24bc657c96fc8df4469ec71416c3063f66f498f399b21eddd33a1c5` |
| 13 | `theorem` | [apply_one](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/apply-one.md) | 165 | `result-track:cd8a0a5c8cf6b70adc6b0ba314117de9b638dd2b900d8a67c144d1a05624269a` |
| 14 | `theorem` | [bernsteinApproximation_uniform](../../../../SpecialFunctions/BernsteinNamespacedApplyZero.lean/declarations/bernsteinapproximation-uniform.md) | 181 | `result-track:bcec17dbdd172e4e4d31682f37ae210b1a3ebf645739428e376ce32f646b32f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2aa04974be623353921ed646c1bdb638e8b557fea214126e43bde2290f4d36b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
