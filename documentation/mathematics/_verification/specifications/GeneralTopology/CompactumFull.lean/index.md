# Verification target: Compactum Full

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a149d855d8f5678005f4b76eb886dfc733dd0623",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactumFull.lean/index.md) · [Full source](../../../../GeneralTopology/CompactumFull.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a149d855d8f5678005f4b76eb886dfc733dd0623`.

Source path: `GRWTSK/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Types` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compactum](../../../../GeneralTopology/CompactumFull.lean/declarations/compactum.md) | 85 | `declaration-track:503c515ba5504d4ee04ce3e2c426cfc2b4dcdd9e90801243b4ed483a299e62fd` |
| 2 | `def` | [forget](../../../../GeneralTopology/CompactumFull.lean/declarations/forget.md) | 92 | `declaration-track:975d3500854bf192d73a0c97680cb0a92bf563e43efa429063a5f11d4b7d9f66` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:360bfd54b3b3ad904a2111a0136c97d7df64a3a8568a027586930c9d9c7066f1` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-6.md) | 100 | `declaration-track:791a31df89155d5f40a2b3137dbe54a7f9867a531c982496d3c5b69c13bfb0ed` |
| 5 | `def` | [free](../../../../GeneralTopology/CompactumFull.lean/declarations/free.md) | 104 | `declaration-track:f55a533a35d281bbbadac1b2aacd995725d89d5d1dc95b265c9011069cee2c85` |
| 6 | `def` | [adj](../../../../GeneralTopology/CompactumFull.lean/declarations/adj.md) | 109 | `declaration-track:6f3c938f72f0b04c420368b1571a5159003b4b5bd1de410c44726edce9f3b2dd` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-5.md) | 114 | `declaration-track:60d95170d8f49145e136fe56eebb360f26b6748eed8227a3a6c1cad49ad4f2ef` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance.md) | 117 | `declaration-track:359b4522421cc888960e2c017a241dc893842280bc94f2d9435f601006fa7c48` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-8.md) | 120 | `declaration-track:9af2e4d30b4c72240936e15d0211f19cda0c5b831d4e9d848640d6d8ae77fc6e` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-9.md) | 123 | `declaration-track:cc7def75085e3d491e2287abefa63b493eaf7d760680b45649e8bb18b4eef0e7` |
| 11 | `def` | [str](../../../../GeneralTopology/CompactumFull.lean/declarations/str.md) | 127 | `declaration-track:0276e4da1799138d95221f6ef532c2241bd058f0f011e070059762e170a57ed8` |
| 12 | `def` | [join](../../../../GeneralTopology/CompactumFull.lean/declarations/join.md) | 132 | `declaration-track:792918ee0666ff368b0245f7259294cc001a9e79253731f31ae0cc7cb1a52228` |
| 13 | `def` | [incl](../../../../GeneralTopology/CompactumFull.lean/declarations/incl.md) | 137 | `declaration-track:dc9c60405b073214040c8678a040af0aac55281cc8fdf79e064c06a2890f49ee` |
| 14 | `theorem` | [str_incl](../../../../GeneralTopology/CompactumFull.lean/declarations/str-incl.md) | 142 | `result-track:0fce1fee0a92941c947ad0f4f2fb31c393df4237846d1c4f6fc5be93c2b9491e` |
| 15 | `theorem` | [str_hom_commute](../../../../GeneralTopology/CompactumFull.lean/declarations/str-hom-commute.md) | 149 | `result-track:6c4b5e426ccc98b52db4d8ba3f45ab01e95faa82b630ffdee753f1eae70f4bcf` |
| 16 | `theorem` | [join_distrib](../../../../GeneralTopology/CompactumFull.lean/declarations/join-distrib.md) | 157 | `result-track:93c0d90c1898e0d15a755204fe68cbf04b9f8c25f0e418c42a41c2473ba6d5a4` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-7.md) | 165 | `declaration-track:793b021958131497cce3167169cb6d7efd3b84908f5578655a8002f86f9fb746` |
| 18 | `theorem` | [isClosed_iff](../../../../GeneralTopology/CompactumFull.lean/declarations/isclosed-iff.md) | 172 | `result-track:22cfdec5453a9c33ed0762640ef37486a871849b740af3af70f7964ef49e2f38` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-3.md) | 187 | `declaration-track:42cb033e58401a4ba7adadb88c5873f327be19b71cf44f6cb0015294fa87e60d` |
| 20 | `def` | [basic](../../../../GeneralTopology/CompactumFull.lean/declarations/basic.md) | 197 | `declaration-track:2de6ba5d08593347c24cfabf5841a2c93821e759e7555df05a6440cc401088a0` |
| 21 | `def` | [cl](../../../../GeneralTopology/CompactumFull.lean/declarations/cl.md) | 201 | `declaration-track:99f9f151782d3a8da505ee319e2d080282a416d8aef1a18261c8393ce1494d26` |
| 22 | `theorem` | [basic_inter](../../../../GeneralTopology/CompactumFull.lean/declarations/basic-inter.md) | 204 | `result-track:e41f3a486c6f188f60d73ebe676f26142232f7878861a5e855ce85aad04ee8e0` |
| 23 | `theorem` | [subset_cl](../../../../GeneralTopology/CompactumFull.lean/declarations/subset-cl.md) | 213 | `result-track:291296d68d3f3de20b4ba4a4936ae452b14bbb676bc234440f70797eba8dc081` |
| 24 | `theorem` | [cl_cl](../../../../GeneralTopology/CompactumFull.lean/declarations/cl-cl.md) | 216 | `result-track:9095718a8bc409afa8d94b1f96ae2df28a9ed91aa46a4f0bdee0aaf55977afc2` |
| 25 | `theorem` | [isClosed_cl](../../../../GeneralTopology/CompactumFull.lean/declarations/isclosed-cl.md) | 275 | `result-track:4bdb510ac1b811bbfc044bebe5a78cec79de24edff30b242221a0a0ab6cd5b16` |
| 26 | `theorem` | [str_eq_of_le_nhds](../../../../GeneralTopology/CompactumFull.lean/declarations/str-eq-of-le-nhds.md) | 281 | `result-track:254fd13a7a8338bcced45b44b4a4ddda412289b7ff88ce7cf9055c8bb1dd93b0` |
| 27 | `theorem` | [le_nhds_of_str_eq](../../../../GeneralTopology/CompactumFull.lean/declarations/le-nhds-of-str-eq.md) | 352 | `result-track:0849a9e311a4b43cdc424f2c30a00874b5aefacd721116fd0cd28ee2b9f7f479` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumFull.lean/declarations/instance-source-edition-4.md) | 357 | `declaration-track:42cfe3bd18f9d465f6e955e6d48c3ff5befe66e6c80587daba2b9ecdb2affb23` |
| 29 | `theorem` | [lim_eq_str](../../../../GeneralTopology/CompactumFull.lean/declarations/lim-eq-str.md) | 363 | `result-track:fae3a50d1b8681a9475d916d6640e334587877b12d640f6268c44488e4b09321` |
| 30 | `theorem` | [cl_eq_closure](../../../../GeneralTopology/CompactumFull.lean/declarations/cl-eq-closure.md) | 368 | `result-track:138802098800faf90651403f631a818b78537b9734bdddce791063191624856b` |
| 31 | `theorem` | [continuous_of_hom](../../../../GeneralTopology/CompactumFull.lean/declarations/continuous-of-hom.md) | 379 | `result-track:dab3f4d2bf3b55fdc00abcaae0e56b79be30e511960b35cccad5deeac6641327` |
| 32 | `def` | [ofTopologicalSpace](../../../../GeneralTopology/CompactumFull.lean/declarations/oftopologicalspace.md) | 389 | `declaration-track:ca3f3334d96b0ac0491f71a447cf8018345644ba7d6eddaa68aabfb071927176` |
| 33 | `def` | [homOfContinuous](../../../../GeneralTopology/CompactumFull.lean/declarations/homofcontinuous.md) | 420 | `declaration-track:dd7d8feb944e9c2c3139f79d6af5854de6a0a187967acbc1fb1dc4a75b5ed9a8` |
| 34 | `def` | [compactumToCompHaus](../../../../GeneralTopology/CompactumFull.lean/declarations/compactumtocomphaus.md) | 433 | `declaration-track:0522081c4bd079388869fa901beb1938e266b2bbbc3ecdaf6b9162f4076969bb` |
| 35 | `def` | [full](../../../../GeneralTopology/CompactumFull.lean/declarations/full.md) | 443 | `declaration-track:1fa80fbc863325fc5abefe12144685b52a4ff1ada6c15beeb5d3941614bdf5f2` |
| 36 | `theorem` | [faithful](../../../../GeneralTopology/CompactumFull.lean/declarations/faithful.md) | 447 | `result-track:5f98167b7c0288cfa1b2cdb2001e36396e3eadda3cf3e8c3a0a4bb95d0803280` |
| 37 | `def` | [isoOfTopologicalSpace](../../../../GeneralTopology/CompactumFull.lean/declarations/isooftopologicalspace.md) | 457 | `declaration-track:8ee83e1f2489a5a22abffdb080a76c5b7cf1ab6395f1bd757473f21682815236` |
| 38 | `theorem` | [essSurj](../../../../GeneralTopology/CompactumFull.lean/declarations/esssurj.md) | 475 | `result-track:d8a5f1a066b427248b0eb998b2d7d5e978ad176b5087ede18e71341966174268` |
| 39 | `instance` | [isEquivalence](../../../../GeneralTopology/CompactumFull.lean/declarations/isequivalence.md) | 480 | `declaration-track:54aa5a1ab80307345ea2755578548c014f5afb9f527a6583b24c4d59deb7cc0d` |
| 40 | `def` | [compactumToCompHausCompForget](../../../../GeneralTopology/CompactumFull.lean/declarations/compactumtocomphauscompforget.md) | 491 | `declaration-track:a8e20d06842b8c5a081ae64323a0bf8de70872d11de3e34fa9d6096e03527bd5` |
| 41 | `instance` | [CompHaus.forgetCreatesLimits](../../../../GeneralTopology/CompactumFull.lean/declarations/comphaus-forgetcreateslimits.md) | 503 | `declaration-track:d2bf90b9225d5afd76a89bd53009a3644895e129a69ec76ef08007e2123da89b` |
| 42 | `instance` | [Profinite.forgetCreatesLimits](../../../../GeneralTopology/CompactumFull.lean/declarations/profinite-forgetcreateslimits.md) | 513 | `declaration-track:d87825af0324771eb9a6c8fdd38a60b360c9fe5e309a07a2ec3b27bac0517185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c139b785793e9435643c067a3fbb54e28e065c451b4a678906869d2aef480a23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
