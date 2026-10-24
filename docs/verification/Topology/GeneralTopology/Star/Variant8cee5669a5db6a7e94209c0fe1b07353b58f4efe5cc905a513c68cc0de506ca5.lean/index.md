# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de21168a1eef135bbae1781770d288e1ffde3b6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de21168a1eef135bbae1781770d288e1ffde3b6`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instStarAddMonoid](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/inststaraddmonoid--e8be1d884ca3b86bf0795e48.md) | 52 | `declaration-track:e8be1d884ca3b86bf0795e48beba582f1f54b7d02d8b16022b2f2826c51e3089` |
| 2 | `theorem` | [coe_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/coe-star--bad1f36b9cac3f1bc24f3ecc.md) | 60 | `result-track:bad1f36b9cac3f1bc24f3eccd3702a3e20e726e6a48347c05f92cf615b3ef30a` |
| 3 | `theorem` | [star_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/star-apply--fc8b9b3e3b2b2b150e2020f5.md) | 63 | `result-track:fc8b9b3e3b2b2b150e2020f5fbcec72c79e321e0fdba24460eedbf5ad37be9c1` |
| 4 | `instance` | [instNormedStarGroup](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/instnormedstargroup--4d89dcb1a419e38e7ac05df6.md) | 65 | `declaration-track:4d89dcb1a419e38e7ac05df64c1acc62d750d15051cd77fc2e836ce418d9a9d3` |
| 5 | `instance` | [instStarModule](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/inststarmodule--bb891b2f10f525aaea953322.md) | 68 | `declaration-track:bb891b2f10f525aaea953322313695421f4c273f83b61e2065429a2e204e2c55` |
| 6 | `instance` | [instStarRing](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/inststarring--6ea4aefc84fdbda2467e98ab.md) | 78 | `declaration-track:6ea4aefc84fdbda2467e98abbb314051f8e074729065528e292eb5db06603150` |
| 7 | `instance` | [instCStarRing](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/instcstarring--fc771749ec989d07775cdba1.md) | 84 | `declaration-track:fc771749ec989d07775cdba1f8306bbe3fa796a7b80c41aa9b52e26c7785fa65` |
| 8 | `def` | [toContinuousMapStarₐ](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/tocontinuousmapstar--7a25cdfb4978bd3184bcb819.md) | 100 | `declaration-track:7a25cdfb4978bd3184bcb819a52ea1a52c1d1534cfe789eb19403b9ea7836cda` |
| 9 | `theorem` | [coe_toContinuousMapStarₐ](../../../../../mathematics/Topology/GeneralTopology/Star/Variant8cee5669a5db6a7e94209c0fe1b07353b58f4efe5cc905a513c68cc0de506ca5.lean/declarations/coe-tocontinuousmapstar--f65610d9a1a4dbf0b94e1225.md) | 104 | `result-track:f65610d9a1a4dbf0b94e12252cddcb2bc4fa4f40e46dc62cea54f2d5cc3bf8d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
