# Verification target: Data Quot Namespaced Mk Surjective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07e09a433fbbe18ded16bd4b438ae9c8c1a99e24",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07e09a433fbbe18ded16bd4b438ae9c8c1a99e24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:4431e383800e8086ab97f6598dddfaa409bdb289ef877fdb99a2518a1962a421` |
| 2 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/ext.md) | 42 | `result-track:e111ba6b3f93addee40c15322dbb3c57d6a883edf332e2044e10fcda3768eb37` |
| 3 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/induction-on-source-edition-3.md) | 58 | `result-track:88dab6bf81e6a43c7308162ab736a2362bc5cd2348e215569486fb9b16dde860` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-8.md) | 62 | `declaration-track:a81363fd89215e726c272558020d6f87bb253f10d279bcc90da563ab75a0851a` |
| 5 | `instance` | [Subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/subsingleton.md) | 65 | `declaration-track:07509ad0e162d482d6cb4d84d06621991bfe109e1d7f16a90244e4f938de229a` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:457681ec2171e983205e1119b507d79d742b5301414990a39977bb41cbe44375` |
| 7 | `def` | [hrecOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/hrecon.md) | 71 | `declaration-track:a3a98cc0ecc1c4991c0ec3383b09d1244187f9845ce46030e096f4bbb69e17f8` |
| 8 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map.md) | 87 | `declaration-track:4e6131fdd78a2ed1f45ab8c2ba9ef576d58336ce3c3bf09967bd2dce7c848eb0` |
| 9 | `def` | [mapRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/mapright.md) | 91 | `declaration-track:cad0929412835f2c17ba25c8fb7f18c832a6589fc75edc3c71f2ddd541990d3f` |
| 10 | `def` | [factor](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/factor.md) | 96 | `declaration-track:4548161f2a3e1f8778213f4e5892fb3ebc525718b16adc0dc9772cba1a4b2bf3` |
| 11 | `theorem` | [factor_mk_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/factor-mk-eq.md) | 99 | `result-track:09209cd0763c82d7b76ad067ff8ea1b049a0ceeaa645847cccb8399d2cc64d08` |
| 12 | `theorem` | [lift_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-mk-source-edition-2.md) | 105 | `result-track:e2c7da4b5b8dae94e36cf3d41c7d9bda5a6a08de3a7f870c7c0f4af7f7446423` |
| 13 | `theorem` | [liftOn_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-mk-source-edition-2.md) | 109 | `result-track:27546b1d9e43b6eb3e5fe764f49bb9a49b4c585fc855a41302069b024edf294c` |
| 14 | `theorem` | [surjective_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/surjective-lift.md) | 113 | `result-track:97d3b9612f137d5a10d23e2146cf37072b608078aa917706b1b0191af6986e87` |
| 15 | `def` | [lift₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift.md) | 118 | `declaration-track:2cc55437a23ff70d4a08014153efb4b1aab17471c43101367415dbc6bfa2d4ad` |
| 16 | `theorem` | [lift₂_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-mk-source-edition-3.md) | 124 | `result-track:eadee779cf75ef92c10f8ae48f635888682302f49da6479d6790c83c88e23dee` |
| 17 | `def` | [liftOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-source-edition-2.md) | 130 | `declaration-track:cb9e498dd0efacc71fc997838fc30acbf1bac854bab5ae8ae6714a73a1cda79b` |
| 18 | `theorem` | [liftOn₂_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-mk-source-edition-3.md) | 135 | `result-track:70f70bf71eadddeb55dcab11ce3999f52e8573e78c3279ac1eadb97729ce0ec9` |
| 19 | `def` | [map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-source-edition-6.md) | 144 | `declaration-track:dd4a759246da3519cb6b8c91ca34932a78f57b975af837b7078b42648dd2abbc` |
| 20 | `theorem` | [map₂_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-mk-source-edition-3.md) | 150 | `result-track:2f36e09eac15dc37c5a9363827a15ab353b1969b11d8085551e2e42e3b4ee0f5` |
| 21 | `def` | [recOnSubsingleton₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/reconsubsingleton-source-edition-2.md) | 157 | `declaration-track:7a76277ad7f2e812f40e26015da5bd2322b5e9b31acd877ddbed134946bc1aa1` |
| 22 | `theorem` | [induction_on₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/induction-on-source-edition-2.md) | 165 | `result-track:5e77dbad733e9c7edcca6e76eb0e183a40a9f100538093a375a9620e7fb61478` |
| 23 | `theorem` | [induction_on₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/induction-on.md) | 170 | `result-track:137a299e9d3bb9ffa024056f75ea790029e1da11841c3e07dd3ea8049062ee53` |
| 24 | `instance` | [lift.decidablePred](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-decidablepred-source-edition-2.md) | 176 | `declaration-track:54bc06d68c50e34465e6225a9fb0fc14d1fd9cd0386a159c9e7ce94389527310` |
| 25 | `instance` | [lift₂.decidablePred](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-decidablepred.md) | 182 | `declaration-track:43fe3568547491dfa2a8d4626d5f998a1f50fc5663ec598b6c6694cbfddea08a` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-9.md) | 188 | `declaration-track:adb8b5fa9591d13c715d8ce54c9fffdd21615c64bc0f0bd5dce6554ecfd3b731` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-5.md) | 193 | `declaration-track:55b848e7273ef7ee5f57689f1e0a7f783b84a2673f4c01aadfa92db38a21fb10` |
| 28 | `instance` | [instInhabitedQuotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instinhabitedquotient.md) | 214 | `declaration-track:2bc27469e78a9690fffbd007fd30d074251c61765408cb730674d442bd1f0fed` |
| 29 | `instance` | [instSubsingletonQuotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instsubsingletonquotient.md) | 217 | `declaration-track:e1283457271a6cebfede93a72487dc22331c0af6ef428b8bf103769be8f418a9` |
| 30 | `instance` | [instUniqueQuotient](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instuniquequotient.md) | 220 | `declaration-track:faa4ec4752b4b4c053ae9d8ee482c06f32791ac691c63f2045000fe8df7f859f` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-2.md) | 222 | `declaration-track:0885be465802cb2dd51c0a6448c3e99a0f8ebb95440fea90b9ef9a3a99eec454` |
| 32 | `def` | [hrecOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/hrecon-source-edition-4.md) | 228 | `declaration-track:e1c11652b88f26b2b9553cdb681fa9e6c82f1b7244901d82595c64f741265637` |
| 33 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-source-edition-4.md) | 234 | `declaration-track:8f6125b833a70dc513bb44e0e02642b1d3ad1eaaa22120cdd1c70f75c7a98151` |
| 34 | `theorem` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-mk-source-edition-4.md) | 238 | `result-track:4fc0d4ef829bc10d933f8a29896a3264d405b33cbaf71eb7be61e3355792421c` |
| 35 | `def` | [map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-source-edition-2.md) | 247 | `declaration-track:67d78386f15b01607244bb95d24f6ab3785ac9edcb5c01de802c36ba9ff83d18` |
| 36 | `theorem` | [map₂_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-mk.md) | 253 | `result-track:1d5802f4f5741778dc743c260f2ee0f9e1bfba70545d7cc86c45c3a2f39b6639` |
| 37 | `instance` | [lift.decidablePred](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-decidablepred-source-edition-3.md) | 257 | `declaration-track:9973ba5e57490471e500108cdd68f796133bb3ccb4e2dc0f852cd720a405fb8d` |
| 38 | `instance` | [lift₂.decidablePred](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-decidablepred-source-edition-4.md) | 262 | `declaration-track:ae6decb03a0efcf40999ac65cf1bbc08632469e187181c813d2989226001b9d3` |
| 39 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-7.md) | 268 | `declaration-track:846db04410a131c48e72f0eedf3cdd2dd2c62d1daf874d84823202106e617c1c` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-6.md) | 272 | `declaration-track:6074eb4b0cabbfa040470bf0169eba29f55d60098ac8d8e7501b728486ebc763` |
| 41 | `theorem` | [Quot.eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quot-eq.md) | 279 | `result-track:935bc92bfcc8a94654339973f3c7c4a916b11df7824c098ab96d6413beb36117` |
| 42 | `theorem` | [Quotient.eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-eq.md) | 284 | `result-track:f04464f1b18b829a398c25b5f6656fd90c308fc7ce59ffbda62b79b516b974eb` |
| 43 | `theorem` | [Quotient.eq_iff_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-eq-iff-equiv.md) | 287 | `result-track:d67a8f2b535ca0eedc448008ed4bd740f648ad097d4badcdf1e95029766745bc` |
| 44 | `theorem` | [Quotient.forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-forall.md) | 290 | `result-track:346598b2224243c710728c9f07123bf4d32359607039e0a2f30a27edfad53c2d` |
| 45 | `theorem` | [Quotient.exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-exists.md) | 294 | `result-track:272864757098ecc6297903357d822e2015b062930682a9ecba6f40052a92719b` |
| 46 | `theorem` | [Quotient.lift_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lift-mk.md) | 299 | `result-track:e75817243872788a287b76b150b7751a58899ea4874afea95dc942281880d04a` |
| 47 | `theorem` | [Quotient.lift_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lift-comp-mk.md) | 304 | `result-track:f528a5506cf1d33587cc81ac8fe9d58983df2ebaa75c975e49fdad15787d742e` |
| 48 | `theorem` | [Quotient.lift_surjective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lift-surjective-iff.md) | 309 | `result-track:da659e61013cef62369f5f489ea78b479a0b0b3901ab9ccaf50505d66be74961` |
| 49 | `theorem` | [Quotient.lift_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lift-surjective.md) | 314 | `result-track:cda9317f4856f1fbebed8f712ececc76ffc0d9ce7db3d99aa04fcb05bc063a68` |
| 50 | `theorem` | [Quotient.lift₂_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lift-mk-source-edition-2.md) | 320 | `result-track:f039185bd7611619798e0264caedbc332b2ec4b3a5e92091ea04c5a7169f0c8b` |
| 51 | `theorem` | [Quotient.liftOn_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lifton-mk-source-edition-2.md) | 327 | `result-track:f4e972b51556e236a1e317c96c20e0c04a62082a878a2186d88793d75763bb31` |
| 52 | `theorem` | [Quotient.liftOn₂_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-lifton-mk.md) | 332 | `result-track:28c8fb1805ecd9983a58e2dd5a5ef9efa73dc575c110ebfc044f093cddbb5679` |
| 53 | `theorem` | [Quot.mk_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quot-mk-surjective.md) | 338 | `result-track:0fd84b6488835816a07c2f85c4db2d685c83466c76a2b989c888ab7514323064` |
| 54 | `theorem` | [Quotient.mk_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-mk-surjective.md) | 342 | `result-track:70509b79991991c2d40b228f9ee3071ff89592c9227a9411f35a8f1b93b3d8c3` |
| 55 | `theorem` | [Quotient.mk'_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-mk-surjective-source-edition-2.md) | 347 | `result-track:88e31ee359186d28142e878281e5daf142281a87da9a99c82af747c1783ed177` |
| 56 | `def` | [Quot.out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quot-out.md) | 353 | `declaration-track:d8a7f10bf14a92b32e85d99e1cb43fefba55f757b53bed997ab362501d948557` |
| 57 | `def` | [Quot.unquot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quot-unquot.md) | 358 | `declaration-track:e0ad9a1809709a87b369d612415f6c9107d04c7cb5d36fc27e40317faea2aeb5` |
| 58 | `theorem` | [Quot.out_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quot-out-eq.md) | 362 | `result-track:92215e04b5760a85aa0f44b72ae1bb49c8d3954a891db407c40d02e0d2219c5e` |
| 59 | `def` | [Quotient.out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-out.md) | 367 | `declaration-track:54c6f016cdd73b9af729ef55eac89f2a8898694770ac80f441cc288ae92a2dbd` |
| 60 | `theorem` | [Quotient.out_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-out-eq.md) | 371 | `result-track:c237843f19134e787cff8ca401c7713762b30b687840eb578aee9c6d65047888` |
| 61 | `theorem` | [Quotient.mk_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-mk-out.md) | 374 | `result-track:dc737f3b78ce99c10cad5f99af20a120260607856d6e8271bb5da1b8f2f50807` |
| 62 | `theorem` | [Quotient.mk_eq_iff_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-mk-eq-iff-out.md) | 377 | `result-track:d95ca68718878416b3e241bbdbfd00c18b15fdf0360b8715048d503a0d59617d` |
| 63 | `theorem` | [Quotient.eq_mk_iff_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-eq-mk-iff-out.md) | 382 | `result-track:ab6f1d9f618144d31de82cc5ce94f4b06cc4ea15d6196d12643766be0fc6d788` |
| 64 | `theorem` | [Quotient.out_equiv_out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-out-equiv-out.md) | 388 | `result-track:2a8fa5de62814e135d545b8f2e36eee66e7db8bca69e9fcb53deb2bf6301e3a3` |
| 65 | `theorem` | [Quotient.out_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-out-injective.md) | 391 | `result-track:e691c0a60a98cb43deaf487a3899d0af5b818651d98a4063aace433040618bee` |
| 66 | `theorem` | [Quotient.out_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-out-inj.md) | 395 | `result-track:f4615a4c7f6a5df3a9775f4fbd14fd4b8d1ca86442245b4ae800ac0079c94a7f` |
| 67 | `instance` | [piSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/pisetoid.md) | 400 | `declaration-track:215570414e96a720fc4b3965e03fe6244f7ebe480b761220558971c2e8faf1ea` |
| 68 | `def` | [Quotient.eval](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-eval.md) | 408 | `declaration-track:af73c46d18515be1aeae46636f47ba7a660156b606d9d0f2ae53bc8b31c46952` |
| 69 | `theorem` | [Quotient.eval_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-eval-mk.md) | 413 | `result-track:d05a1e4454b90995229b16e68bdcdd2cd4ec16eb01622dd1cbb79566db4d38df` |
| 70 | `def` | [Quotient.choice](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-choice.md) | 419 | `declaration-track:8a60b412186de57aab9d21754a347e815844561b26e2d9954c69779296a41397` |
| 71 | `theorem` | [Quotient.choice_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-choice-eq.md) | 425 | `result-track:2f213e738a2e9d262f3b446bf1f191e3f7c8392416086f08a593a9ec77f24e14` |
| 72 | `theorem` | [Quotient.induction_on_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/quotient-induction-on-pi.md) | 430 | `result-track:fc7bc5c79e6c38b55711c0a6baa8c4a707794514f37cab46adf64f634bb152ed` |
| 73 | `theorem` | [nonempty_quotient_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/nonempty-quotient-iff.md) | 438 | `result-track:26a378044bf9c97b264ceea26beccbba039a44b2011aa6a06a49f0d75a6ee076` |
| 74 | `theorem` | [true_equivalence](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/true-equivalence.md) | 444 | `result-track:e125d8b72c864eee661d79a2b50e99160e5fd633bfe4c52b25b57a508e04a326` |
| 75 | `def` | [trueSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/truesetoid.md) | 450 | `declaration-track:95cfcb40fdcb8cd7b0996246db62934c760ae699e5cb31dcc8efbaa6683453f9` |
| 76 | `def` | [Trunc.](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/trunc.md) | 458 | `declaration-track:824d51e401c36a5822a8e3202fc314e623e2e73039d80b7578d277840decaf35` |
| 77 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/mk-source-edition-2.md) | 464 | `declaration-track:d742c39f7a84dd28c9a2496b808c444bec7f2f1fef7ced9db2e4576632a29212` |
| 78 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-12.md) | 467 | `declaration-track:c221ec7b4e38810c882b0425a4cd2f0f25e2f671f2f40e8ef4d9829b648e79ef` |
| 79 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-source-edition-2.md) | 471 | `declaration-track:55ef8e8f1328f4f89937a44e340d349f1c73cf0813389fe74b8eb9bf68c01299` |
| 80 | `theorem` | [ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/ind-source-edition-2.md) | 474 | `result-track:36a3ea2bc1189a354204282de321377705f2b2238715b8be16a1a4d2d8e0e1ed` |
| 81 | `theorem` | [lift_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lift-mk.md) | 477 | `result-track:3ce3efb4bb10f1142c4a5e75f51180d8a4ad288349ea57a4752f1ec2966a7b8c` |
| 82 | `def` | [liftOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton.md) | 481 | `declaration-track:727c4a09fdb99b43d7712f9809538ca5f3d591b68311129ac49fa9a21483060b` |
| 83 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/induction-on-source-edition-4.md) | 485 | `result-track:d2c8a482e316d6ee10a3c4d6df649399daa962e3c38a6d548c07aac86ef14a45` |
| 84 | `theorem` | [exists_rep](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/exists-rep.md) | 488 | `result-track:47dbc68e16d3c7db2d9c943cd369832be7660bb49a01020f60444b814dfcf40c` |
| 85 | `theorem` | [induction_on₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/induction-on-source-edition-5.md) | 492 | `result-track:db3cebe292d1e833495ce04f07d942c753101f57f6dfc7a954fea217a7854ed6` |
| 86 | `theorem` | [eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/eq-source-edition-2.md) | 496 | `result-track:40a3df6bd48002ac67d1c6dba0278ea4bb037dd119a4cf786ce6284e02b573c4` |
| 87 | `instance` | [instSubsingletonTrunc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instsubsingletontrunc.md) | 499 | `declaration-track:6df750b7c31b83511945fc1289302769f640b409253c41655c58847eee812bd5` |
| 88 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/bind.md) | 503 | `declaration-track:7b01bfa6ecf79ca1fc77d292af5900bc2e2805c28b5546de96700bdc0b880269` |
| 89 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-source-edition-5.md) | 507 | `declaration-track:ceb828eb59701c5469837c4233df8f08a34a1b5b19dc0eebd05b78eed5e254ee` |
| 90 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-13.md) | 510 | `declaration-track:fb5487111d6baab27c1fbcfb7c7929c42daa448e93b1d943bfa8551200bc45e0` |
| 91 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-11.md) | 514 | `declaration-track:bee13df8e67d5d75efc7f578b22cac451660fbef569f061779bbf9e9135e8b9a` |
| 92 | `def` | [rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/rec.md) | 529 | `declaration-track:1ebb6cdd1e0cb76f4444fcfa458bd7dc327915f3b043e7fedb2e7b73d34a0444` |
| 93 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/recon.md) | 536 | `declaration-track:d05567605f18cb64cb8f606ff40ebed6b782bad53368997c156957754e7e9f28` |
| 94 | `def` | [recOnSubsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/reconsubsingleton-source-edition-3.md) | 542 | `declaration-track:8dba28f1650d3c80a1b15cd926a6a489c972dd4e5bf78dc3afef2f2a8cfaaa8a` |
| 95 | `def` | [out](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/out.md) | 547 | `declaration-track:96362030e726a06265468e2ab9503c211d53d3625f4f8448eeb72dbda0d78c61` |
| 96 | `theorem` | [out_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/out-eq-source-edition-2.md) | 551 | `result-track:f11b1c1e374f9b9603a6b9b8e8ecf2d6d0d31ffdd18dbefe8b0287a66d19bfe8` |
| 97 | `theorem` | [nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/nonempty.md) | 554 | `result-track:3cc2d01e2a7a4a7c67e0840da8aa89e70bb2720b96e69d5bbb9823fc5001530e` |
| 98 | `abbrev` | [mk''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/mk.md) | 574 | `declaration-track:2d5df59cb52cfb9a5bb4c8e05b9b80564da28e5c50a53d60b8a341bc9f74a0b9` |
| 99 | `theorem` | [mk''_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/mk-surjective.md) | 578 | `result-track:486fbb5514a3a26fede4bf30f1e958a337074860e176ba640ff89614842f371c` |
| 100 | `def` | [liftOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-source-edition-3.md) | 583 | `declaration-track:dfc0a4f4ef0f70998795c018b9f9af060a1f6d98b75dd83e26e14cc27d421fe7` |
| 101 | `theorem` | [liftOn'_mk''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-mk-source-edition-4.md) | 588 | `result-track:767a3f27b8d775a185092884939adc2778e6a9d8533e0b115f72bca8d2af0b7a` |
| 102 | `lemma` | [surjective_liftOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/surjective-lifton.md) | 592 | `result-track:6c4b54884d5986dcd74f50a9dabc358a8929e959eca238691cdb1ca41eba765d` |
| 103 | `def` | [liftOn₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-source-edition-4.md) | 598 | `declaration-track:f97c50ac226d6289944e28ade53be67e4572d0ef1270fb83c1c58c46b276bc5e` |
| 104 | `theorem` | [liftOn₂'_mk''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-mk-source-edition-5.md) | 603 | `result-track:b2c05c2832a70637ee9c25ceee83b93758be210f5b4f2a4fac1d3b0655f901d0` |
| 105 | `theorem` | [ind'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/ind.md) | 610 | `result-track:0910423c24d172c0e7f8a78ce0ae1f012b354a478845c15afcedfbe9424ca0b7` |
| 106 | `theorem` | [ind₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/ind-source-edition-3.md) | 617 | `result-track:590c500c603317f384f219b3fe433e65c3aca538d9909314dd8f71d5560bf28b` |
| 107 | `theorem` | [inductionOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/inductionon-source-edition-3.md) | 625 | `result-track:b4496ad3f0404f151f8ad1519a8ab66948066d9a52e7c3b003732e84960c5734` |
| 108 | `theorem` | [inductionOn₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/inductionon.md) | 632 | `result-track:16bbf82da7bb7e68bc61e68360a5bc3bbe7da9e07e0369a62b941425ba08410a` |
| 109 | `theorem` | [inductionOn₃'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/inductionon-source-edition-2.md) | 640 | `result-track:6a764b3a803753f2e5cb1a192fdfc0597c9db231ffba15ac4e837a89f8b64f41` |
| 110 | `def` | [recOnSubsingleton'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/reconsubsingleton-source-edition-4.md) | 649 | `declaration-track:a9a60b8478e236914d7ea2781fd7a24509c290ce38844153e482425d84d2be4f` |
| 111 | `def` | [recOnSubsingleton₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/reconsubsingleton.md) | 657 | `declaration-track:53f9b8ea7861aa13b6718880265583ac17167cc389b3c05d469e68738a2b157a` |
| 112 | `def` | [hrecOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/hrecon-source-edition-3.md) | 664 | `declaration-track:cfb5c035fbc5477f206442c2159f63ad17f78379f0b37c2d31e8be27a270fda6` |
| 113 | `theorem` | [hrecOn'_mk''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/hrecon-mk.md) | 669 | `result-track:02d95181b779e2efba62a03dfe45f51022d39bb7f1a90017a9ea27a1256c2105` |
| 114 | `def` | [hrecOn₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/hrecon-source-edition-2.md) | 675 | `declaration-track:bb08fa6141b73de7249410651a7bd672dd25820aaa8c74fb05f235be20d69335` |
| 115 | `theorem` | [hrecOn₂'_mk''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/hrecon-mk-source-edition-2.md) | 682 | `result-track:b9ea4e3d997e8465d300fadc5da7eafc7fdad5b81589d90dc95204f35ce93034` |
| 116 | `def` | [map'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-source-edition-3.md) | 690 | `declaration-track:8d2cdbf21c711d2917c99dedfbbe57da43584eadd9b9853031d1e963d62b5fa4` |
| 117 | `theorem` | [map'_mk''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-mk-source-edition-5.md) | 695 | `result-track:60112d1e9a88cb1c4368cab11c096147a4983dc90647ce18dc0812ee867730fd` |
| 118 | `theorem` | [exact'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/exact.md) | 702 | `result-track:a22f54a365fad959b75687f70e5f618ec0c15d221b3c4485fda49b1ce86d37a4` |
| 119 | `theorem` | [sound'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/sound.md) | 706 | `result-track:e505c069fc0173b5fbb7a21b0648681a490a953785826d6981017991c1a07904` |
| 120 | `theorem` | [eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/eq.md) | 710 | `result-track:3b04738c18975eb7c5cf15ac81539ba5d2de8f6748b64d968558ace8fd8e0a09` |
| 121 | `theorem` | [eq''](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/eq-source-edition-3.md) | 714 | `result-track:5b0168b57789d63d6d436558a0aa1aab3af0fff352c85f037f939b43495a02ba` |
| 122 | `theorem` | [out_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/out-eq.md) | 717 | `result-track:ddf373c78c25cb8dd9e3c6df4cb7752191edc0d7ef71c785afd911f60e987f41` |
| 123 | `theorem` | [mk_out'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/mk-out.md) | 720 | `result-track:f3f60c6d75772cabc98a1440743d4512ae6801dde50526eb01f2fc88f49cce36` |
| 124 | `theorem` | [mk''_eq_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/mk-eq-mk.md) | 727 | `result-track:26dd7b16ccef0cc6860d7e91849d092f9f936a22bb8ff3915f30353069edff45` |
| 125 | `theorem` | [liftOn'_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-mk-source-edition-6.md) | 731 | `result-track:eb44902e9faa2b9819bdf0b47c70c340454ba823cf9c8e9c8e281d7d0e0e7009` |
| 126 | `theorem` | [liftOn₂'_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/lifton-mk.md) | 735 | `result-track:1362a7b72ca48780526f196820ef2c445eb6f4bef5f704ecee9f90fa02c5bc32` |
| 127 | `theorem` | [map'_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/map-mk-source-edition-2.md) | 739 | `result-track:262ebdc3374d3f0b48db5fca4e3b2a38a59dcfce7282c4468e53bc07f460cc45` |
| 128 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance-source-edition-10.md) | 745 | `declaration-track:b3f9299ca2a2a9cedfdc6560f8fb27e79bd07a40ef82e45ec2a21c7c9404f1e9` |
| 129 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/instance.md) | 750 | `declaration-track:070b309e9b1217d9d324ba12db16e6ab8320f9e6c905931745cf70b331820c5c` |
| 130 | `lemma` | [Equivalence.quot_mk_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataQuotNamespacedMkSurjective.lean/declarations/equivalence-quot-mk-eq-iff.md) | 759 | `result-track:b471f46e20969b662a3917e0880745419dc78407c24ff78cde9e898cc398a6f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d320d944d65c712ed685d97cb119b82c19636f9a928b6b9fd07b35e6b81faaea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variantca04f70efdb8f73687de81ac7befee14fe49ab2c87e63e3aa48e5769edb27005.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
