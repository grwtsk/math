# Verification target: Bernstein Apply Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80e7503ea36b85c631a0b5dc32471b1d9b0882f4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/BernsteinApplyZero.lean/index.md) · [Full source](../../../../SpecialFunctions/BernsteinApplyZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80e7503ea36b85c631a0b5dc32471b1d9b0882f4`.

Source path: `GRWTSK/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Bernstein` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Polynomial` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernstein](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/bernstein.md) | 58 | `declaration-track:5dd8723b7805a57a768041b4916e73bec308236eda631f30aa04c965ec9a67df` |
| 2 | `theorem` | [bernstein_apply](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/bernstein-apply.md) | 61 | `result-track:41fb83083e695839a85aed5e72be268282b09d6eb418c2fdccfa5d5b0c959e45` |
| 3 | `theorem` | [bernstein_nonneg](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/bernstein-nonneg.md) | 67 | `result-track:a65dfb8e730d0dc027b083245321c4030c61e5c699efa19e219c85b2a97c2cfc` |
| 4 | `def` | [evalBernstein](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/evalbernstein.md) | 79 | `declaration-track:d032c284a11538a7df76e4ed539af13689678cffeb41d849f50aca2c99e8de8a` |
| 5 | `def` | [z](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/z.md) | 95 | `declaration-track:e889b73e0bc7f712f1b75ea0d33957ba638f415fa6dbeede6835e96f69f981d0` |
| 6 | `lemma` | [z_zero](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/z-zero.md) | 100 | `result-track:9f735e748a51afbe0762dc498eab1684fb5edeedf0aed3eed8533325dbb785b9` |
| 7 | `lemma` | [z_last](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/z-last.md) | 101 | `result-track:9d22e97a0441951d74849a28d252d140d125668f218c5d31d35f636973e87d76` |
| 8 | `theorem` | [probability](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/probability.md) | 104 | `result-track:ca59e8afcf8b3ad3adf88c8a07f35f7cf1fd8ec380a2695615cb6724bfc2b29c` |
| 9 | `theorem` | [variance](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/variance.md) | 111 | `result-track:2c282b439599bac3f6a4033f0900f943bf3486288f021d43c40b1ee5c54eadbd` |
| 10 | `def` | [bernsteinApproximation](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/bernsteinapproximation.md) | 129 | `declaration-track:175d6ac75e9148d5b35b26e2d0ae1d9d5024e537ec5c07b2518f9fd455c87c29` |
| 11 | `theorem` | [apply](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/apply.md) | 148 | `result-track:664eb8e5735a20f6cbc834b1e1cc73653c804104cbfd9d9a577e642580d3dbea` |
| 12 | `theorem` | [apply_zero](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/apply-zero.md) | 153 | `result-track:cf455c8a2b1033c91cd85b3813c64153685d229e6a1a33ef1b2f0a30f9b9656a` |
| 13 | `theorem` | [apply_one](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/apply-one.md) | 157 | `result-track:f817b05a082173192461885f01d7c53f1c667443635f753c948b9146ece53daf` |
| 14 | `theorem` | [bernsteinApproximation_uniform](../../../../SpecialFunctions/BernsteinApplyZero.lean/declarations/bernsteinapproximation-uniform.md) | 173 | `result-track:576d14336849573d364d6b314c448d34814dc5e5a3f387ac06bde9843016945c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc1ea21c637decbaa8b9a861620f13a795eaf7eab931b30c74d84e9278c3f1df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
