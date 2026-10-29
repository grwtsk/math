# Verification target: Lie Free Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e0f70dd2f5170a840a31ad3cf8f0298fa113812",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e0f70dd2f5170a840a31ad3cf8f0298fa113812`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.NonUnitalNonAssocAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.UniversalEnveloping` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeNonUnitalNonAssocAlgebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/rel.md) | 81 | `declaration-track:089542068b6b5151b5d863fdf230a0948b00e441473a772e59ca969dba209f23` |
| 2 | `theorem` | [Rel.addLeft](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/rel-addleft.md) | 92 | `result-track:4dbb9ff00c98324f45731564aae0f002812e0ebf60ce43546757adbafd595554` |
| 3 | `theorem` | [Rel.neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/rel-neg.md) | 96 | `result-track:d6ddf2f534150ddf6706791a98e916df7485024859191fcd82a49bbcf671a6f8` |
| 4 | `theorem` | [Rel.subLeft](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/rel-subleft.md) | 100 | `result-track:24509e56e31d51595c3b8e159c8566dd891198ecdc70da6fb66e61aa1a600941` |
| 5 | `theorem` | [Rel.subRight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/rel-subright.md) | 104 | `result-track:907bfec003b361e8a35d9637091f0d2a10daa292ac3e7c3d5f953a185a7cd2a0` |
| 6 | `theorem` | [Rel.smulOfTower](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/rel-smuloftower.md) | 108 | `result-track:f8d7a8acba866e11069e0e186637cd5756beb172558b66e67b8f31b5e6f96aa9` |
| 7 | `def` | [FreeLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/freeliealgebra.md) | 117 | `declaration-track:4049e1ff350726d76fc80dbc45c8bd2722dcc2e9915ee6f02ad13133ac267317` |
| 8 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-5.md) | 121 | `declaration-track:7c8562fc641cc35dfcd6c9c75223beb17d5dffcc298eb3b1433e8b62c12f1ed4` |
| 9 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-13.md) | 125 | `declaration-track:edb7afe537cb3f0975e79467d3a035437aa957a0393e2cd3a99cc36ea5387e29` |
| 10 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-12.md) | 128 | `declaration-track:ec401281ca1358114d084805185a8237cfd6d4ae9169ff5222e76672a2f8bd29` |
| 11 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-7.md) | 132 | `declaration-track:8ba8a302ed687672781f7f1a127714804aefc87f042d1b4e028b5a4b62290e99` |
| 12 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-10.md) | 134 | `declaration-track:c2b0c173227691bfd11479b6a17c11012d73832416f5861609f8383f43001bf9` |
| 13 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-9.md) | 137 | `declaration-track:b3d3d924757d0aff97f91f1098b75a1fdbad4241f9da6aeb2751bb4dd67d6df5` |
| 14 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-11.md) | 139 | `declaration-track:df2b00f28b880081906706d294afa0b83b4911b49247eb8a7e1c0afca9adab46` |
| 15 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-6.md) | 142 | `declaration-track:880f3dcaedef154aa6900c584caabd5c79fbe98b4719fbaa2a09c4474bbe2834` |
| 16 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-8.md) | 146 | `declaration-track:8d0c448ed8006611697211ac475a8c5e71c8ec9ab92f9b2e40c586b18f3ed983` |
| 17 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-4.md) | 149 | `declaration-track:74f97ae9dc26da8be0ff3b1a59094724cc8d5988f9ff4ad29fa76df6d43cccc6` |
| 18 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:691e7cd56c90ac7aee3f05a582308b4137f7e9778d6cca5c299591b015a69c59` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance-source-edition-3.md) | 160 | `declaration-track:722bb6729c73470cc58d1286955a6cd98bc352688b2675526f9e909d09fde428` |
| 20 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/instance.md) | 167 | `declaration-track:19d8afa6f391f397ebfd0f69b862f99f20236f7158fbf6f42d900b69a8c657fc` |
| 21 | `def` | [of](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/of.md) | 177 | `declaration-track:1164838110817f780196ff948343e08752271a2448072c34d15cc7882df0d6d6` |
| 22 | `def` | [liftAux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/liftaux.md) | 183 | `declaration-track:681b8aa1e9e03979d29a0e7379fc29f761eec190b66999e1028fdf5b5ec27342` |
| 23 | `theorem` | [liftAux_map_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/liftaux-map-smul.md) | 187 | `result-track:7080bc1abaa9cb1ac397370850868d5535a0c6dc4ae17a81b0bdcbfb52c18eb6` |
| 24 | `theorem` | [liftAux_map_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/liftaux-map-add.md) | 192 | `result-track:ddb54fc9bea880dc2c0e74dbe92688dc88306c6e3b562e7c92ff8839d5c6c02c` |
| 25 | `theorem` | [liftAux_map_mul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/liftaux-map-mul.md) | 197 | `result-track:97ab0d07c5750d4c125e0840c2457a7ad6c38ac11b97c08ebde525a462e533dd` |
| 26 | `theorem` | [liftAux_spec](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/liftaux-spec.md) | 202 | `result-track:33d9a7c3f8790ce73a3b4291272cb2100c500c4c406e1b6b1fe3251a49ecff93` |
| 27 | `def` | [mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/mk.md) | 215 | `declaration-track:28a74de85ebdd67e50eca12f6c0ac88dae80c7b56e022852eb85266b2602cf2a` |
| 28 | `def` | [lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/lift.md) | 225 | `declaration-track:c7724d9340931d6f1cf75c98b61b99f1e8c04b10a90f492b6b0e999e601ea12e` |
| 29 | `theorem` | [lift_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/lift-symm-apply.md) | 242 | `result-track:69e660a1b23e497741f8f0871bffc26e90ac02f5fef4b24e360d3a82ced0b335` |
| 30 | `theorem` | [of_comp_lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/of-comp-lift.md) | 248 | `result-track:51948fafed1d38dad05a775c175906e9f10d257bb28bd3ab11036eac15b4be95` |
| 31 | `theorem` | [lift_unique](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/lift-unique.md) | 252 | `result-track:ac026f68af967d8a7898d921ff9fbb960f2cafba8b004f578c611459fb514314` |
| 32 | `theorem` | [lift_of_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/lift-of-apply.md) | 257 | `result-track:991998285cdea31bfd08c5cf67e798cedaeccc8b7ea429d14a5be5a73ba15758` |
| 33 | `theorem` | [lift_comp_of](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/lift-comp-of.md) | 262 | `result-track:82ad935e90bf57bb05faf2408b4fd856a4d6fbf70aa769cf45ea5a56efcebc43` |
| 34 | `theorem` | [hom_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/hom-ext.md) | 267 | `result-track:1cd81f1c3c7c9be73d2224c2b0830d8ecb143daa9118a15743b7625a5dcfda9b` |
| 35 | `def` | [universalEnvelopingEquivFreeAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeAligned.lean/declarations/universalenvelopingequivfreealgebra.md) | 278 | `declaration-track:9ce1f6e3b1300799ef4c51d2ca2fb8f55235ad46c26cb6b3c5abd59dd313c4d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938c9fb2e48cd8fe87b1b443184ab06332ee40c0bfbacfe174fa1c53e7537023 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
