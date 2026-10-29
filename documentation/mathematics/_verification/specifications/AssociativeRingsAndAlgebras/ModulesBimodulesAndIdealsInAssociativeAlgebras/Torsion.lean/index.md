# Verification target: Torsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d526764c703457e7c7478c605a3b0fcda4099f2",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d526764c703457e7c7478c605a3b0fcda4099f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Torsion` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Ideal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [torsionOf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionof.md) | 75 | `declaration-track:65c2d5745fef76995af644c45a7420f5b31d0a5765bd39e67ca20038320a811d` |
| 2 | `theorem` | [torsionOf_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionof-zero.md) | 81 | `result-track:61d47b5a9b3f8189413598513761ccefd40bf14344e72a8223f2424c566ecbca` |
| 3 | `theorem` | [mem_torsionOf_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/mem-torsionof-iff.md) | 87 | `result-track:c39bd43209fcd78b9fd2cbacea0e39a20e7636b0a5c393c4244e53ae34d1b616` |
| 4 | `theorem` | [torsionOf_eq_top_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionof-eq-top-iff.md) | 94 | `result-track:20ad0b8f98097fc980b1489658f524607a4a9df1a39920b5b6377fabe0836e20` |
| 5 | `theorem` | [torsionOf_eq_bot_iff_of_noZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionof-eq-bot-iff-of-nozerosmuldivisors.md) | 101 | `result-track:adfaa250dda1f3a99f16a2dc7c0d7be47ec68c4f73ab034523153efe40bb5536` |
| 6 | `theorem` | [CompleteLattice.Independent.linear_independent'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/completelattice-independent-linear-independent.md) | 112 | `result-track:50fe85d3083c948edfecec9a5a299ab0513e21291d6dac37455c88465294482d` |
| 7 | `def` | [quotTorsionOfEquivSpanSingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/quottorsionofequivspansingleton.md) | 135 | `declaration-track:05fe051041945db59f078e0ba3f9748f35114af50d6304ee0d9709afeaffb68f` |
| 8 | `theorem` | [quotTorsionOfEquivSpanSingleton_apply_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/quottorsionofequivspansingleton-apply-mk.md) | 143 | `result-track:66ec8f34e88ad77425e049c66de40ad19ec14b5816e9b725d73e3c74c5360c82` |
| 9 | `def` | [torsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby.md) | 164 | `declaration-track:be192088dd45e50e4c4de5c6b4cd325ab390deb32ecc401d66bc40f8ad0b0207` |
| 10 | `def` | [torsionBySet](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset.md) | 171 | `declaration-track:796242bd99a01ca0653e1645e4745fc37b42e74d430716fb76504682f78250f3` |
| 11 | `def` | [torsion'AddSubMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-addsubmonoid.md) | 180 | `declaration-track:5f2c322dc73f7ccbc6346486018f4879756aa49a95d2d2f01bdf3b7e1334ddbf` |
| 12 | `def` | [torsion'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-source-edition-2.md) | 192 | `declaration-track:b0e20b8cb914c9b8334006430afd0289c86b6209893ad5ef4fd140c19905dd5b` |
| 13 | `def` | [torsion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion.md) | 201 | `declaration-track:45693fc22ca79ffcb4d685017cdaca41f8fb4e483162797344bfe1f5b4c9d572` |
| 14 | `def` | [IsTorsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionby.md) | 211 | `declaration-track:b4b3bb41b614c8dd4374ce4f04154c08689dac5d8ccf5867542cfd7422eccf77` |
| 15 | `def` | [IsTorsionBySet](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset.md) | 217 | `declaration-track:4aeb8c4b082f8d468d107244a7d4843d3020c815a1af227c45cde59ab4b5e07a` |
| 16 | `def` | [IsTorsion'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsion.md) | 223 | `declaration-track:5b13262c97060bda03b11e29b9fa37861974c8be94b700026825bb03e35d9faa` |
| 17 | `def` | [IsTorsion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsion-source-edition-2.md) | 230 | `declaration-track:8617d8b5b8f2f910baf8ea3a846bca0de070dae296047d71ec811c67dfed7eb9` |
| 18 | `theorem` | [smul_torsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/smul-torsionby.md) | 247 | `result-track:7cdef532585013619255cc991f8627bd65f95da1506cfe9d5c6f42dda9929ceb` |
| 19 | `theorem` | [smul_coe_torsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/smul-coe-torsionby.md) | 252 | `result-track:4d85b14a7830881525d3bb0ace0b2d802b0003974dda3aa5d1f33a056b0d0ad1` |
| 20 | `theorem` | [mem_torsionBy_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/mem-torsionby-iff.md) | 257 | `result-track:05fb33c92a9184935c6b8d0b3d720c37d23b392cf9bc4de339bea85764e2595b` |
| 21 | `theorem` | [mem_torsionBySet_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/mem-torsionbyset-iff.md) | 262 | `result-track:71d190397b2c4617c52db213ad2b72eb51788acfe3160e51db80792b4540c482` |
| 22 | `theorem` | [torsionBySet_singleton_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-singleton-eq.md) | 268 | `result-track:18c8c3b6406ed3124b47919da6f8067945ab50ed25c46371b7c38f1c57f68f52` |
| 23 | `theorem` | [torsionBySet_le_torsionBySet_of_subset](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-le-torsionbyset-of-subset.md) | 274 | `result-track:cff75bcca94511763005f493fbe78fce7143bddf00ad00c83c2607c8261e0388` |
| 24 | `theorem` | [torsionBySet_eq_torsionBySet_span](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-eq-torsionbyset-span.md) | 280 | `result-track:72574e374f6b3536fed9ec02b40f1e4092588ae1ea8993aeaec1771cfdeef811` |
| 25 | `theorem` | [torsionBySet_span_singleton_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-span-singleton-eq.md) | 291 | `result-track:a48202f06e370508ae7d01d17792f1103ce3d1caf9d3b686a98c52b3ad059ae8` |
| 26 | `theorem` | [torsionBy_le_torsionBy_of_dvd](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-le-torsionby-of-dvd.md) | 295 | `result-track:b965ad55778215595c44f9631ff0dc746302d2f5fd6d2a4a2ce958a434b953f3` |
| 27 | `theorem` | [torsionBy_one](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-one.md) | 303 | `result-track:aabfe4028919b49c44c765af3abf950b3b490684bbaeebd57946035a60cd64c2` |
| 28 | `theorem` | [torsionBySet_univ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-univ.md) | 310 | `result-track:3d1946723a9df5405127164342de5db1fe4d35c7de45ae14de6d73e04ba56852` |
| 29 | `theorem` | [isTorsionBySet_singleton_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-singleton-iff.md) | 322 | `result-track:6fbe4b9d030bc4dde25fd6b61c604db8b3c6c452e7e05537791d1d7fde51070e` |
| 30 | `theorem` | [isTorsionBySet_iff_torsionBySet_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-iff-torsionbyset-eq-top.md) | 327 | `result-track:e96e646099be010cde7df3123c357043b9672c4027c7724e2b027ef9a1069ed8` |
| 31 | `theorem` | [isTorsionBy_iff_torsionBy_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionby-iff-torsionby-eq-top.md) | 335 | `result-track:f979f2a168d10da9392e5044e5758d0fdc33af2ed8bb81936dc7f05d07fba1a6` |
| 32 | `theorem` | [isTorsionBySet_iff_is_torsion_by_span](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-iff-is-torsion-by-span.md) | 340 | `result-track:7f443826a5a0e14ec406c58cc8428501bb825cacbddee48b07affa52eeb5718d` |
| 33 | `theorem` | [isTorsionBySet_span_singleton_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-span-singleton-iff.md) | 346 | `result-track:5f5a289e35ab562f8059d066a30451c1fb50f0dfa05b507307bf33743f71d922` |
| 34 | `theorem` | [torsionBySet_isTorsionBySet](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-istorsionbyset.md) | 356 | `result-track:f5c8c0927d3a1a5e14571b91eae1ce23fbcd9018d041274ca0fd094e711bd88b` |
| 35 | `theorem` | [torsionBy_isTorsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-istorsionby.md) | 361 | `result-track:6d6bc6176ee0a78edbd31cc8474c18ac355f025d28d36d8755f2230e96d09871` |
| 36 | `theorem` | [torsionBy_torsionBy_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-torsionby-eq-top.md) | 365 | `result-track:3e163abb0057635621aa92752df03318581e14133a48104c4740d23475f6df3b` |
| 37 | `theorem` | [torsionBySet_torsionBySet_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-torsionbyset-eq-top.md) | 370 | `result-track:ebd1072df32b0ba85829c8ad307f73657ca33da6108cc3e9cf532b2f48c759c0` |
| 38 | `theorem` | [torsion_gc](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-gc.md) | 376 | `result-track:d259bb3d9820764dacf93fa1a790c3e48ef637e5f87da460dcf59b2906223148` |
| 39 | `theorem` | [iSup_torsionBySet_ideal_eq_torsionBySet_iInf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/isup-torsionbyset-ideal-eq-torsionbyset-iinf.md) | 395 | `result-track:811a8f03f51e360b9c07187e3c965eb174058232e3b8f6922a2929ab2148846b` |
| 40 | `theorem` | [supIndep_torsionBySet_ideal](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/supindep-torsionbyset-ideal.md) | 433 | `result-track:8dd0d50b3e8331b7f6f6f1be66ecbab82874683a9eee0cc36cb2e2a8a467e95d` |
| 41 | `theorem` | [iSup_torsionBy_eq_torsionBy_prod](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/isup-torsionby-eq-torsionby-prod.md) | 446 | `result-track:1b47e194966b343e52d1d572f362a3262b51be7f3f9ad7b2e54bf65c246777a5` |
| 42 | `theorem` | [supIndep_torsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/supindep-torsionby.md) | 460 | `result-track:7a299a4a96660fc7fc6197230c9860bdfe13eea16c3f1ebc6b18c4f8df832cae` |
| 43 | `theorem` | [torsionBySet_isInternal](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-isinternal.md) | 484 | `result-track:0387ce0b2598f1edc5696da59690c843a0cab68c7613c5c480aea36bbdc63c40` |
| 44 | `theorem` | [torsionBy_isInternal](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-isinternal.md) | 499 | `result-track:306f57740a4d7ad6d26a3bb4e680f70c00760bd56e992f06563a17bdf58076dc` |
| 45 | `def` | [IsTorsionBySet.hasSMul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-hassmul.md) | 516 | `declaration-track:7472e49d19193e6a6adfe3b0f51fb46eef3a40d3e130180fc55d475e52a457fc` |
| 46 | `theorem` | [IsTorsionBySet.mk_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-mk-smul.md) | 526 | `result-track:32d1b0686ed0a5ea72f97cee6a2480aa6d7d20663b8c782688a047ee7e2d7c7b` |
| 47 | `def` | [IsTorsionBySet.module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-module.md) | 533 | `declaration-track:47b77e3ee5f765a379a3258ee8c8734e9b326c02f085fa60390d7cdd4dffc2d2` |
| 48 | `instance` | [IsTorsionBySet.isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsionbyset-isscalartower.md) | 538 | `declaration-track:4b129e26a8a36ac01c90a5e9251b8d1a431d8adaf5e2c181773903f4be052302` |
| 49 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-8.md) | 546 | `declaration-track:c8ac9c6b6374bf0716e863f4555c52bbc7cf7a9db0e1ce889ff2c43efa2fc77a` |
| 50 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance.md) | 556 | `declaration-track:29385312da3159b866d2e36abf76dded443720e52d14fe4de321cb3709e6151c` |
| 51 | `theorem` | [torsionBySet.mk_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionbyset-mk-smul.md) | 561 | `result-track:9adf6cede55809ccf2177b5e7aac84d11bb593e12d457d7d55487989b99ad865` |
| 52 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-6.md) | 566 | `declaration-track:7704d8cb905c34070135671e66cee790b73b962a30e88b4e296a8807d912227a` |
| 53 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-5.md) | 571 | `declaration-track:74aa2d88249227aa9f8845ea1e82523433700f5cf7a966a7141b37cfef6f7302` |
| 54 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-4.md) | 576 | `declaration-track:7277e8fc14b06faa33ad4d53c0ce500930e84c0ae3e5b40e87a6d5ba213251ff` |
| 55 | `theorem` | [torsionBy.mk_ideal_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-mk-ideal-smul.md) | 581 | `result-track:2662acc03e0db5b75be29355eae5efffd76f98cce2516b525acdc1ac56dbcc05` |
| 56 | `theorem` | [torsionBy.mk_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-mk-smul.md) | 585 | `result-track:37f1341d0a1f1fbe75463bc2151f0e7045923d2d630c5ae2990dc4063b0f1daa` |
| 57 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-3.md) | 590 | `declaration-track:5ed6a6b017a7824d260b9f2f25ac08ed51c27b0e58608d8843c5f21fab43c33c` |
| 58 | `theorem` | [mem_torsion'_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/mem-torsion-iff.md) | 609 | `result-track:645e406974220f604cd9979a3bd3cc283fc42ba31b39c5a60961e6b41d112169` |
| 59 | `theorem` | [mem_torsion_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/mem-torsion-iff-source-edition-2.md) | 614 | `result-track:9754cf1ef0c5fa5f4f0b217c76ff49cbf6c75d89d966fb5a5e5dc31a05d1de45` |
| 60 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-7.md) | 619 | `declaration-track:7da82a43355ef50a309e8e0994da5619123c59e7f78f0e6d5f00bdbe496d7cb1` |
| 61 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-9.md) | 627 | `declaration-track:f154e8bb804b2de6a93d416ff43d0dba344f5f8c57616af92132f32f50b616dd` |
| 62 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/instance-source-edition-2.md) | 631 | `declaration-track:5daa1a987e43054da76d8f7c466b8d3d81cc738cfc39ece1dbff9e808d26dfaa` |
| 63 | `theorem` | [isTorsion'_iff_torsion'_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsion-iff-torsion-eq-top.md) | 635 | `result-track:97b200db9bc61d0ca14d9ae1b3fc9b87f5d31e2170757c1077716e6f8766afd8` |
| 64 | `theorem` | [torsion'_isTorsion'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-istorsion.md) | 642 | `result-track:e68cb833d3ec1a9e2d79b87a9f0b8f04b7288a9f564d043f89799d20a08a6d50` |
| 65 | `theorem` | [torsion'_torsion'_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-torsion-eq-top-source-edition-2.md) | 646 | `result-track:575ffce14d7c91f61ab1075277386c133d0c9b670a849d5176e243ec50b948a6` |
| 66 | `theorem` | [torsion_torsion_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-torsion-eq-top.md) | 653 | `result-track:3a962dfc6f3e60c6006f2bfc0acf6affd7d9cb4a97a2b5e8a2f3173a2107f558` |
| 67 | `theorem` | [torsion_isTorsion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-istorsion-source-edition-2.md) | 658 | `result-track:f2d73422cca94a134007fe3fb9f10b83c7811a4f72492a7fe5e1eb2a09e8c25a` |
| 68 | `theorem` | [_root_.Module.isTorsionBySet_annihilator_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/root-module-istorsionbyset-annihilator-top.md) | 672 | `result-track:31b10687a18c926359b85d780ca0cdf485d207ad3574102f8ce6a4c862d405e9` |
| 69 | `theorem` | [_root_.Submodule.annihilator_top_inter_nonZeroDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/root-submodule-annihilator-top-inter-nonzerodivisors.md) | 679 | `result-track:cd9adec86c963f775e56a7ea012339f86ca31336dbe1f4708d6aeaa15cfc3417` |
| 70 | `theorem` | [coe_torsion_eq_annihilator_ne_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/coe-torsion-eq-annihilator-ne-bot.md) | 692 | `result-track:944b951cd5a5963ab585c18151c118bd664c3c065a03cea04cab76562e88f0b6` |
| 71 | `theorem` | [noZeroSMulDivisors_iff_torsion_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/nozerosmuldivisors-iff-torsion-eq-bot.md) | 703 | `result-track:6318c4a1cb1da49738ab368cdbf8a210dc2cec5b9fa68ce215fe393280569cd3` |
| 72 | `theorem` | [torsion_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsion-eq-bot.md) | 731 | `result-track:11b10f122ba648988d1e70c5f39641406c5ef4dadf12c754c2106f8dd6e5097a` |
| 73 | `instance` | [noZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/nozerosmuldivisors.md) | 740 | `declaration-track:9c398f756e495e3996e5548b15b934e920e4c5cde8e148ee0a09e09c58be08d5` |
| 74 | `theorem` | [isTorsion'_powers_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsion-powers-iff.md) | 754 | `result-track:02bc7077b27b5347d59d22420026e632f18d558f4e7fef1764491fc7b734fe68` |
| 75 | `def` | [pOrder](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/porder.md) | 771 | `declaration-track:f425e46b339d5d99ac1b5a9e8f0a89a4bb89c87303733fb96b6d8c150b2a4c88` |
| 76 | `theorem` | [pow_pOrder_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/pow-porder-smul.md) | 777 | `result-track:bd95bb737b7bda22849feaa4b15573512184bd3d444d53507fac66685cc9efb6` |
| 77 | `theorem` | [exists_isTorsionBy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/exists-istorsionby.md) | 786 | `result-track:98354fa2953e6895e48e2a616dd01f456649b0c4afc595ea080ffcebad456719` |
| 78 | `theorem` | [torsionBy_eq_span_singleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/torsionby-eq-span-singleton.md) | 810 | `result-track:1ce10e4838def792dda3eb4924bd2ba74572d5f2ebcebc54c6cb6634ba88e0b3` |
| 79 | `theorem` | [isTorsion_iff_isTorsion_nat](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsion-iff-istorsion-nat.md) | 829 | `result-track:ca18a018c105eb5bf64f17bb461a410c19d333dd97edefed2ad597821bcb0429` |
| 80 | `theorem` | [isTorsion_iff_isTorsion_int](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Torsion.lean/declarations/istorsion-iff-istorsion-int.md) | 839 | `result-track:bd80a5753993c753df81515ff1c073e62f32aafb199e90d2a042eb6bda3b8973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27d5e49e4be7455f9cac477a37e0e5e2b2fa6d2bdbc55a55c8f0253cbcea0243 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Torsion/Variantdf8571f2168e5658d0204efa151609773ab8370aff5931ee87a7ee55940b327b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
