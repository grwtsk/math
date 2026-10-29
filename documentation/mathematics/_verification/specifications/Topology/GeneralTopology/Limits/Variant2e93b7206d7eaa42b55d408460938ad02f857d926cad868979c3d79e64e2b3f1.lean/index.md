# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74b02b8c9866e0d73a99bd9d46dc1fb0959bd9c1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74b02b8c9866e0d73a99bd9d46dc1fb0959bd9c1`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Category.ProfiniteGrp.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ClopenNhdofOne` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/instance--bef892792c80f5958c0f711a.md) | 40 | `declaration-track:bef892792c80f5958c0f711aa952791827be21488464c8f40fe332befbb6b803` |
| 2 | `def` | [toFiniteQuotientFunctor](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/tofinitequotientfunctor--eb897260f4617e0413d7d791.md) | 45 | `declaration-track:eb897260f4617e0413d7d7913c5be97790aea31dc3ff6c293e72228bafc07ddd` |
| 3 | `def` | [toLimit_fun](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/tolimit-fun--11e69294e02e7efcd97b391d.md) | 54 | `declaration-track:11e69294e02e7efcd97b391d35945161bc144d331e5d7b90c0745c3c1f00ddff` |
| 4 | `lemma` | [toLimit_fun_continuous](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/tolimit-fun-continuous--72d68679e2b4072a9f932913.md) | 60 | `result-track:72d68679e2b4072a9f9329138f85b85adda57382795250f40578f86f63e15e42` |
| 5 | `def` | [toLimit](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/tolimit--08bef7d2ba18c04b64d90b1e.md) | 78 | `declaration-track:08bef7d2ba18c04b64d90b1e3481c40cf0a40ec95fb66766dc09413b8678484d` |
| 6 | `theorem` | [denseRange_toLimit](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/denserange-tolimit--7cd60a2e887f09950f59e926.md) | 84 | `result-track:7cd60a2e887f09950f59e926982e14c2d514b29a415c38680caa22af8a413d1d` |
| 7 | `theorem` | [toLimit_surjective](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/tolimit-surjective--9f029d6796d8d182ecd0b3fd.md) | 107 | `result-track:9f029d6796d8d182ecd0b3fd2cf6bb1b654a52cb59d51e7afafbcdb8c3d572fe` |
| 8 | `theorem` | [toLimit_injective](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/tolimit-injective--7a886ef9f0933399ecc5266e.md) | 113 | `result-track:7a886ef9f0933399ecc5266e4c9e6262709aafc2e871d5a53cbbae412e81ee94` |
| 9 | `def` | [continuousMulEquivLimittoFiniteQuotientFunctor](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/continuousmulequivlimittofinitequotientfunctor--320a052787e3a3e8de3b7945.md) | 124 | `declaration-track:320a052787e3a3e8de3b79455e767cf59d9e75201277491fe6147127938bec8c` |
| 10 | `instance` | [isIso_toLimit](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/isiso-tolimit--d07b9b5c2aff1061e07951bc.md) | 131 | `declaration-track:d07b9b5c2aff1061e07951bc4affd411ad8ea3f5891a8401c581cefd04bf41ff` |
| 11 | `def` | [isoLimittoFiniteQuotientFunctor](../../../../../../Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean/declarations/isolimittofinitequotientfunctor--d358035159fa1d70198aa54d.md) | 137 | `declaration-track:d358035159fa1d70198aa54dceb7a7942788aeedd0f4ce4ad77e2ea1e4b8a8fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95121cb8b6695ccd3833270b8b6be8d63cf7799e351721d4a4feadc3bc03474b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Limits/Variant2e93b7206d7eaa42b55d408460938ad02f857d926cad868979c3d79e64e2b3f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
