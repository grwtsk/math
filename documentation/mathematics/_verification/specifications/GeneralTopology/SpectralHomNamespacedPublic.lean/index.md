# Verification target: Spectral Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36a2425c0a12ade297abd33a0fab4c5e1ba3fa9f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant1f0a40238c517f3203d7f89f46a329277845ab749a056b77c487102d97590b60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36a2425c0a12ade297abd33a0fab4c5e1ba3fa9f`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant1f0a40238c517f3203d7f89f46a329277845ab749a056b77c487102d97590b60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant1f0a40238c517f3203d7f89f46a329277845ab749a056b77c487102d97590b60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSpectralMap](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/isspectralmap.md) | 51 | `declaration-track:95cec22377bbaa2946f5a47f9ad72858b4b94d176ac9cc1f531349f7d17fbbc7` |
| 2 | `theorem` | [IsCompact.preimage_of_isOpen](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/iscompact-preimage-of-isopen.md) | 56 | `result-track:0d8ec8ceff85c1f9609e807c1496eec7f1bbd136e7bb126f3cdc456cb8e1dbdb` |
| 3 | `theorem` | [IsSpectralMap.continuous](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/isspectralmap-continuous.md) | 60 | `result-track:e597a89a744db87a3ae082932c86540a3596f7eb1be614fec4c61852223b3831` |
| 4 | `theorem` | [isSpectralMap_id](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/isspectralmap-id.md) | 63 | `result-track:8e6c786ec8cdff8b585410de27ec49efb3eaa7eaa86ebe7c0c02bbe8b0f21967` |
| 5 | `theorem` | [IsSpectralMap.comp](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/isspectralmap-comp.md) | 67 | `result-track:f06f74cd2fef94fcadd21b097907f9e16364be4e22b234c9709613528cd2e38e` |
| 6 | `theorem` | [IsProperMap.isSpectralMap](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/ispropermap-isspectralmap.md) | 72 | `result-track:789dbb51fdd021d8b215e7ab5c99b1c01a6f10e6f779d87d911981fda0d1e480` |
| 7 | `structure` | [SpectralMap](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/spectralmap.md) | 78 | `declaration-track:def54ad68476271f599480b43c20ad74f9fcfe4022b881b0025bd7635b3f884c` |
| 8 | `class` | [SpectralMapClass](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/spectralmapclass.md) | 89 | `declaration-track:46b19bf73e1c377d130e694b22f47b5c17d0537cee5904bcb012bae848b1364b` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:ad25fbe80df08f3077976a04ce3790d1ca7bad2e05e28871f6957dcad4389f24` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 105 | `declaration-track:8bd6dbbf53bd941fe813c5d5d50f722010e92344cec7c2e5debadc76ac934443` |
| 11 | `def` | [toContinuousMap](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/tocontinuousmap.md) | 117 | `declaration-track:f15f7de278b686d75d8af21fc0e01e671616572d63e2d98f638bd163851df2b6` |
| 12 | `instance` | [instFunLike](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/instfunlike.md) | 121 | `declaration-track:6f34f649fb104c5fdb6f61682427e54b13d5e4b7d2946f7fa4ce4bcb710e8a77` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/instance.md) | 125 | `declaration-track:23d52550594d5aa5907b8d58e46d22d79466ed24b247552fbf33cc116f3be8b1` |
| 14 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 129 | `result-track:86bfbaaf2b149ebf26d41cb0442e42432b94f096b344b4ed91d23a26ca3ca065` |
| 15 | `theorem` | [ext](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/ext.md) | 133 | `result-track:93057c62ac3a88801e3045227f6fcb77e866af0e9b96d60a1194f91e963c3016` |
| 16 | `def` | [copy](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/copy.md) | 138 | `declaration-track:46858f45565a3af6f2df38b07169ed437ba139ea0c55310d60f51becad84660a` |
| 17 | `theorem` | [coe_copy](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/coe-copy.md) | 142 | `result-track:76870d3067e60f44f8a5ca3474cf7b1ea79d25402ea05226b8e44482c85a6588` |
| 18 | `theorem` | [copy_eq](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/copy-eq.md) | 145 | `result-track:52ef06a5b74418aa461483fdbef3d64ed756b86ee4fbcbecfe478960cac9ee7e` |
| 19 | `def` | [id](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/id.md) | 151 | `declaration-track:360edded9201f7acaa2d00e9c171c74fbdb7799928eae67d57257568665b67c7` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 154 | `declaration-track:f62b971eaf610e2874efc7ba477ab5934ff7165d4fe11d5e878a0099174cc760` |
| 21 | `theorem` | [coe_id](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/coe-id.md) | 158 | `result-track:af8352ef1834cb222243e61dec14943e07a0ad17f0327cfe9f219872dbd46b05` |
| 22 | `theorem` | [id_apply](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/id-apply.md) | 164 | `result-track:cbc635fe14301cf16764d8abf94843c6a189c85669a17fad77945dc34d2576b8` |
| 23 | `def` | [comp](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/comp.md) | 168 | `declaration-track:8c2db7bba9bba8b2b7b37006a91292f0f6bd8e28d94b015ef2326b2c517e097d` |
| 24 | `theorem` | [coe_comp](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/coe-comp.md) | 172 | `result-track:6f75e70282ef0b16ead24f32f9ab14e154eead03676a514182378a8a9a6aba1d` |
| 25 | `theorem` | [comp_apply](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/comp-apply.md) | 176 | `result-track:5b0b744d0224ca86fdd517c29a55bb8321e6378c32fe33506b096ca27549a53b` |
| 26 | `theorem` | [coe_comp_continuousMap](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/coe-comp-continuousmap.md) | 179 | `result-track:b223271834c52510bbcf05d9e664cc69a38edb4c8fb6f3632bec21f24268a044` |
| 27 | `theorem` | [coe_comp_continuousMap'](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/coe-comp-continuousmap-source-edition-2.md) | 184 | `result-track:fbeb2067b64e65f2fed3b5205e16792340da78230f9962e2fb7e02669616ac39` |
| 28 | `theorem` | [comp_assoc](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/comp-assoc.md) | 189 | `result-track:71036c24543675d91a674927925eacdcf0ef10dcedda1c18fdf5b63e7099c30e` |
| 29 | `theorem` | [comp_id](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/comp-id.md) | 194 | `result-track:6b27967d73f41d22dcda5853b29ba5085c28fa61aa4782d28058b69b8d538569` |
| 30 | `theorem` | [id_comp](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/id-comp.md) | 198 | `result-track:76f8503fd6e3f59e23a1700a2a35377bee678a1e2f1df9a163daa1af01e22762` |
| 31 | `theorem` | [cancel_right](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/cancel-right.md) | 202 | `result-track:a9d00cf160a3758efe1a9d5f1d6aa92bcdeaea905a033870cb194aa7aab9bda2` |
| 32 | `theorem` | [cancel_left](../../../../GeneralTopology/SpectralHomNamespacedPublic.lean/declarations/cancel-left.md) | 208 | `result-track:29ce5084792a0c29f8d9d8b92de330cdf2645f946a35832489a977ba37793379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0df9948841b33e84852ddd3a7645c839f6158a906e51da23294d8e0495cac8d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hom/Variant1f0a40238c517f3203d7f89f46a329277845ab749a056b77c487102d97590b60.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Hom/Variant1f0a40238c517f3203d7f89f46a329277845ab749a056b77c487102d97590b60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
