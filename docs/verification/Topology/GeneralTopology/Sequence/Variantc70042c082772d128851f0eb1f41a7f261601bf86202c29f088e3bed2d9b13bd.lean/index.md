# Verification target: GRWTSK.Topology.GeneralTopology.Sequence.Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6198ecf4cfe62253135d270015027baac93a152e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6198ecf4cfe62253135d270015027baac93a152e`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Light.EffectiveEpi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Injective` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LightProfinite.fibre](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/lightprofinite-fibre--c3c7e13107bfdc23b75a322d.md) | 30 | `declaration-track:c3c7e13107bfdc23b75a322d61cc55c4f534be962b859ebd3a6c6bbd103b210d` |
| 2 | `def` | [LightProfinite.fibreIncl](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/lightprofinite-fibreincl--cbac26342da818c1ad06ce5a.md) | 35 | `declaration-track:cbac26342da818c1ad06ce5a88862bdfd44396d0c51635ddeeb5469593cb9986` |
| 3 | `def` | [fibres](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/fibres--2e78284683412d2f787b7938.md) | 47 | `declaration-track:2e78284683412d2f787b79381a90a5bb7daa4a781f4e249863c33d3b31e94ee2` |
| 4 | `lemma` | [mem_fibres_iff](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/mem-fibres-iff--b0ff63e23e5650c9f394b939.md) | 51 | `result-track:b0ff63e23e5650c9f394b93937a04443f3b5238c039a1fe1390823d5edf4e72f` |
| 5 | `lemma` | [fibres_compl_eq_iUnion](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/fibres-compl-eq-iunion--2c3d352469e19a5054abdb92.md) | 56 | `result-track:2c3d352469e19a5054abdb92b76eb09ca7ece183645623d0b45e2ad1ba145b86` |
| 6 | `lemma` | [fibres_closed](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/fibres-closed--bbadcaf2f98a6c44be0f8f8b.md) | 73 | `result-track:bbadcaf2f98a6c44be0f8f8b99abb1ed16277738f90a3d43c7dc7b9779bcc393` |
| 7 | `def` | [π_r](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/r--3b68d9a81ae09cc2102affd7.md) | 84 | `declaration-track:3b68d9a81ae09cc2102affd7107eaef69a2ea038c8c1f866bab01eec43b269fc` |
| 8 | `lemma` | [π_r_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/r-apply--9a18628afb7af3446a339288.md) | 89 | `result-track:9a18628afb7af3446a339288bb34feb1ed855d449ee0b3cb2484cc86719934d0` |
| 9 | `def` | [fibreIncl](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/fibreincl--d1ce64e10045c4a80184ce99.md) | 93 | `declaration-track:d1ce64e10045c4a80184ce99d73b10ebb738095e8978d07f747fa0fa19910ac6` |
| 10 | `lemma` | [fibreIncl_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/fibreincl-apply--2525433b0b9ca484dbdc0b9b.md) | 98 | `result-track:2525433b0b9ca484dbdc0b9bf8913515420343a28bf41836e5923a354a8fa09d` |
| 11 | `lemma` | [fibres_surjective](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/fibres-surjective--90b95f3510b3e09025cfd8ab.md) | 102 | `result-track:90b95f3510b3e09025cfd8abfe52713a4ebc994e7fb8717c1c3a4aa07f5ef69a` |
| 12 | `def` | [coverToFun](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/covertofun--69e5f2569f8366a7e9e6e47a.md) | 112 | `declaration-track:69e5f2569f8366a7e9e6e47af2dabd2b3e9e5246960dc0564178708bcd278e0c` |
| 13 | `lemma` | [coverToFun_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/covertofun-apply--265e39c981f1cab598b2a210.md) | 117 | `result-track:265e39c981f1cab598b2a2100effefcaadc2793a07d80219c8ff64e425309d98` |
| 14 | `lemma` | [coverToFun_surjective](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/covertofun-surjective--162e3cf867820d0be92598db.md) | 123 | `result-track:162e3cf867820d0be92598db94031d0adaf747b3f707ad184013056846377608` |
| 15 | `def` | [sectionOfFibreIncl](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/sectionoffibreincl--cb2037e2609fbb6010737277.md) | 133 | `declaration-track:cb2037e2609fbb6010737277bedf9d4569e6ea141aa656efcc52e6474171e5af` |
| 16 | `def` | [S'](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/s--2cae44384b28318b88db096c.md) | 148 | `declaration-track:2cae44384b28318b88db096c81bfbc22d523ab072aca6c67850862213a575f93` |
| 17 | `lemma` | [mem_S'_iff](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/mem-s-iff--89ddfc90f7fce23c1c4af320.md) | 152 | `result-track:89ddfc90f7fce23c1c4af320bc7191e350de3203f3204809c8da42b98cf62ea8` |
| 18 | `def` | [y](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/y--e1c428548056012ef676bd07.md) | 156 | `declaration-track:e1c428548056012ef676bd07428ae08d54ef935b620bcfa087fe19b7ac5dbf8e` |
| 19 | `lemma` | [y_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/y-apply--41ea2dd718e7f61c91d5fe1c.md) | 159 | `result-track:41ea2dd718e7f61c91d5fe1c51214f7d8d72fa9ec1d763c3ab0841f516ee7b40` |
| 20 | `lemma` | [y_continuous](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/y-continuous--71de95a7340312da6699ef25.md) | 161 | `result-track:71de95a7340312da6699ef25619b264465662dc60be1d5537daf1a7aabf142d3` |
| 21 | `lemma` | [y_surjective](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/y-surjective--cbb8a7f0b911a406a89774ca.md) | 167 | `result-track:cbb8a7f0b911a406a89774ca42517ae71d6667a6dc4469a1624041387f60e362` |
| 22 | `lemma` | [S'_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/s-compactspace--63f6d230e503bd4b96aff4c5.md) | 174 | `result-track:63f6d230e503bd4b96aff4c5bee5956b29468e54a9392e32a675b3f310e0794a` |
| 23 | `def` | [cover](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/cover--08b27dada3594e5256e95c8a.md) | 191 | `declaration-track:08b27dada3594e5256e95c8afd492d993d98cbb09f82e60c0550abdb598f9f28` |
| 24 | `def` | [cocone](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/cocone--d6862f8970e5bb7fb100e8ce.md) | 205 | `declaration-track:d6862f8970e5bb7fb100e8ce4dbb7fd604b4c0c4fc7ee2aead8ac9be8d9a871f` |
| 25 | `lemma` | [aux](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/aux--190c3946c42b145767a122c6.md) | 256 | `result-track:190c3946c42b145767a122c63cb6e2f6ec7cf5e901a98019bc388de879064c7d` |
| 26 | `theorem` | [LightCondensed.internallyProjective_free_natUnionInfty](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/declarations/lightcondensed-internallyprojective-free-natunioninfty--95dc92e4d71895cacea45d86.md) | 302 | `result-track:95dc92e4d71895cacea45d8640610435948771f7ba1906b7d79251dc348c873d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
