# Verification target: Frm Cat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e04d63c4897f3664366973ba01816a772c08452",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FrmCat/Variantdaadbd8ea735f32b3547e8b91fce5b587f244027bddff48e5e0da148d2794890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e04d63c4897f3664366973ba01816a772c08452`.

Source path: `GRWTSK/Topology/GeneralTopology/FrmCat/Variantdaadbd8ea735f32b3547e8b91fce5b587f244027bddff48e5e0da148d2794890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FrmCat/Variantdaadbd8ea735f32b3547e8b91fce5b587f244027bddff48e5e0da148d2794890.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.LatCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FrmCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/frmcat.md) | 39 | `declaration-track:d7f3ce233fa68a5d340267db659f1b758301ef6ceee2309997e34f786e23fd6e` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/instance-source-edition-3.md) | 45 | `declaration-track:7703598536a5808a0a0d6bfa5fe86ff5d1611cdd7835919e602b509b0a192f72` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/instance.md) | 48 | `declaration-track:00fca0ca322a69fdfda35d4bcfd932b4280ce5c76a9939e56f2af046aabcc099` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/of.md) | 52 | `declaration-track:92da8aa5d1efaf8b84531057299dfad9564cdf8cafe19d5bd877641a077a9db8` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/coe-of.md) | 57 | `result-track:e6e7237cfaf939e63821484470350442a1d3b02baed706a1595fa65fa973cac5` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:55b210e23b7db0c8c3170d852fafa9d2d1cd630c69d965790e3bd6ee48b2ad9d` |
| 7 | `abbrev` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/hom.md) | 65 | `declaration-track:1febd4914adae5add7b223111903848bdcbee83322470396f4772b7f9d8ffadb` |
| 8 | `instance` | [bundledHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/bundledhom.md) | 69 | `declaration-track:968dd55241fa2a1509340fbca169bc70b71225cedd0b0dc74eee86383201b018` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/instance-source-edition-4.md) | 80 | `declaration-track:f8bb1625d60cbe0588c8535a120efd191031bcc4b493c4b5c5c691561f70026c` |
| 10 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/hasforgettolat.md) | 84 | `declaration-track:d366ed464273e70eff7a2a1fc37179df1fc47f5f18dece1f8e86c8ce18203c3e` |
| 11 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/iso-mk.md) | 92 | `declaration-track:828a99a804e8e28247402a61e3d0e7d146d9cd630d6bdee1afcffec88d781d53` |
| 12 | `def` | [topCatOpToFrameCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/topcatoptoframecat.md) | 107 | `declaration-track:ed62551f5934ba93fc4b1ea536c4b3c4ef28c03a5337f9345064fa866ff25937` |
| 13 | `instance` | [CompHausOpToFrame.faithful](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCatNamespaced.lean/declarations/comphausoptoframe-faithful.md) | 114 | `declaration-track:58bbe29e156c9e919f29835e6fd4326afdc07dc187b6d218a97677a0fa044841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c728b2f174dadfa32e3f3c151019cb30fc841e6af72787f8c3f924373eeaeda4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FrmCat/Variantdaadbd8ea735f32b3547e8b91fce5b587f244027bddff48e5e0da148d2794890.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FrmCat/Variantdaadbd8ea735f32b3547e8b91fce5b587f244027bddff48e5e0da148d2794890.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
