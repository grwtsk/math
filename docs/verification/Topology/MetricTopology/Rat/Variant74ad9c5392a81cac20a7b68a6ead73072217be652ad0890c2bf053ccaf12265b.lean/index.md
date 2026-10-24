# Verification target: GRWTSK.Topology.MetricTopology.Rat.Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62070975ca4e6e5fff210f46baef48783cf3cce0",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62070975ca4e6e5fff210f46baef48783cf3cce0`.

Source path: `GRWTSK/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNRat.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--212ac4e968d8fe52c12086b5.md) | 29 | `declaration-track:212ac4e968d8fe52c12086b52e6824b836d1fe37aa6a171672106045a8486194` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/dist-eq--1dd2d6364a6b71c994326ea9.md) | 32 | `result-track:1dd2d6364a6b71c994326ea9572970af63c211cebc7b7016c828d1c75e91f903` |
| 3 | `theorem` | [dist_cast](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/dist-cast--71ca064adcadc67055a56352.md) | 35 | `result-track:71ca064adcadc67055a56352537101c50422590d2900c133b39e7dedd26e9ee1` |
| 4 | `theorem` | [uniformContinuous_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/uniformcontinuous-coe-real--0fca9e4fc139a36f4276f27f.md) | 38 | `result-track:0fca9e4fc139a36f4276f27f0f2ca208793e4a359f4ececa9e6adcf2faddb895` |
| 5 | `theorem` | [isUniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/isuniformembedding-coe-real--27ab1b5b160ed0197d3759ff.md) | 41 | `result-track:27ab1b5b160ed0197d3759ffa860578adb8df77cfd69b40f0322bb4f5bf402af` |
| 6 | `theorem` | [isDenseEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/isdenseembedding-coe-real--778064f526fe32109763933a.md) | 44 | `result-track:778064f526fe32109763933ab3d21bbb737ff30a192f23e028593fbaa9113fb3` |
| 7 | `theorem` | [isEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/isembedding-coe-real--3aefa765410a6e6144164eb7.md) | 47 | `result-track:3aefa765410a6e6144164eb7b8e2b46d8c67b2a04d357347636a6c1a08be0109` |
| 8 | `theorem` | [continuous_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/continuous-coe-real--f0d36e3151943f8dd82c00a5.md) | 53 | `result-track:f0d36e3151943f8dd82c00a567fbdbf7cb26f37960c306e17779aa4b576f6db6` |
| 9 | `theorem` | [Nat.dist_cast_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/nat-dist-cast-rat--be19cf46821682f54a01b2aa.md) | 59 | `result-track:be19cf46821682f54a01b2aa2cfc219459424387cb4611fdf35007d25d0a6775` |
| 10 | `theorem` | [Nat.isUniformEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/nat-isuniformembedding-coe-rat--3458cc098b9ce7eb97081c1f.md) | 62 | `result-track:3458cc098b9ce7eb97081c1fd698ae7dd09efaa4fd624a72335c36fa1d08b533` |
| 11 | `theorem` | [Nat.isClosedEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/nat-isclosedembedding-coe-rat--0e03c39912538429a92da8b6.md) | 65 | `result-track:0e03c39912538429a92da8b63a20ed0ca0a2537b69bb4a3340092bd36053fa50` |
| 12 | `theorem` | [Int.dist_cast_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/int-dist-cast-rat--3c3786ba4a6133bd8878cace.md) | 69 | `result-track:3c3786ba4a6133bd8878cacefe411318dbe332f6ac1fc749711a617aa8f1f359` |
| 13 | `theorem` | [Int.isUniformEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/int-isuniformembedding-coe-rat--4ee46d79a7bed5cfefda440a.md) | 72 | `result-track:4ee46d79a7bed5cfefda440a267916714f6ebfa634511509f8d5cd9f3c2b8cf0` |
| 14 | `theorem` | [Int.isClosedEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/int-isclosedembedding-coe-rat--9cfa2000a2214d61f0e1cd74.md) | 75 | `result-track:9cfa2000a2214d61f0e1cd7419201a1a3c62f1e4e0bb980a57e4809434082fd9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--0865a34ddd477f45e358d922.md) | 80 | `declaration-track:0865a34ddd477f45e358d922b078b69e530416969e5d5916c7dfe2b390787d56` |
| 16 | `theorem` | [uniformContinuous_add](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/uniformcontinuous-add--4423bda87368bf1cde749f7a.md) | 82 | `result-track:4423bda87368bf1cde749f7a519d4e8d436b2d633662a6c69779d1231926422f` |
| 17 | `theorem` | [uniformContinuous_neg](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/uniformcontinuous-neg--84631b4e2bbb54c9096901da.md) | 88 | `result-track:84631b4e2bbb54c9096901da595b4f979e850a8ee6cc221bdad69c0618c544a2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--4b51042005239221716941a9.md) | 92 | `declaration-track:4b51042005239221716941a95d77e43f26da963f613c33c9f7de8c832545c0e7` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--fa1263b22aee0a3ad4a22378.md) | 95 | `declaration-track:fa1263b22aee0a3ad4a22378768f348e2af165d57b0967ba5dc513e9a131cade` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--690bab025a357bf670bcff1d.md) | 97 | `declaration-track:690bab025a357bf670bcff1d22b33500ced7b9d4c7f15406a1cd5ab4ce731588` |
| 21 | `theorem` | [uniformContinuous_abs](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/uniformcontinuous-abs--b61a788c7089717207856173.md) | 99 | `result-track:b61a788c7089717207856173ffac9a375f5388110b0c3837edc7592f24b97746` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--fbf738a5bf27cf9b25bf64fc.md) | 104 | `declaration-track:fbf738a5bf27cf9b25bf64fc0e950053edd68f38699ab848198c473dab4b64df` |
| 23 | `theorem` | [totallyBounded_Icc](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/totallybounded-icc--55222a137f362652a5b7caa0.md) | 106 | `result-track:55222a137f362652a5b7caa0d94c5eea7224d64c7423d2c544a0c05e7534fcbf` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--28e2df436bb3a183c18d19e7.md) | 115 | `declaration-track:28e2df436bb3a183c18d19e73d85be23f84b3b9d497b3bfa84d323880e7ae0bd` |
| 25 | `lemma` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/dist-eq--430d11df1ccc314a8c7d7db7.md) | 119 | `result-track:430d11df1ccc314a8c7d7db7d706c33d85c796779bc37e4f9992ca727142f8f7` |
| 26 | `lemma` | [nndist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/nndist-eq--45cee778829bea666308f3e3.md) | 121 | `result-track:45cee778829bea666308f3e30abba44af7379e6056177339fd7a8d70fa3e100f` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--9e1872fe94bb360e02604389.md) | 123 | `declaration-track:9e1872fe94bb360e026043894e3626534012823d78ba893fd1a08d2ca1942a18` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--fa4ca8a1c57dde89a0825156.md) | 127 | `declaration-track:fa4ca8a1c57dde89a082515666179dc6ff5399b74b276a3f4bba50d316e6949f` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--5e92aa37b567e5456c2727b8.md) | 131 | `declaration-track:5e92aa37b567e5456c2727b80f1c267ab0243764fa824c02c80a3d515f6b97d5` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variant74ad9c5392a81cac20a7b68a6ead73072217be652ad0890c2bf053ccaf12265b.lean/declarations/instance--c6daebd06528e70ca6a96a89.md) | 132 | `declaration-track:c6daebd06528e70ca6a96a89b1abb079471297a484f3a143bae473984bb466eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
