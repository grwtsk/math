# Verification target: Congruence Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba4fa02ce0007d897cf8f457ffe20a785d90961e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba4fa02ce0007d897cf8f457ffe20a785d90961e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 58 | `declaration-track:e72312ae111c099b94c348b1944a8c708e16b69733780be3b7be3188ea50d1f5` |
| 2 | `theorem` | [coe_smul](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/coe-smul.md) | 61 | `result-track:72f584ba2497944b8b8527d63eff00582216184587fd29389a5b223d03011a33` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 64 | `declaration-track:68ca7dc1fd19a2ce4a13f2a56f5e82a230138253245d5773fba4f26422cd0229` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 67 | `declaration-track:cb7cd096f2c02327f1273f11c5f2bd266f5a3b1824c3501b38f55c0bba1ba712` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance.md) | 70 | `declaration-track:100eb86a8d90856a1189c0f618550606059dd64a61ba1e62ebd981466d4136aa` |
| 6 | `instance` | [isScalarTower_right](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/isscalartower-right.md) | 75 | `declaration-track:7081eae4777ef51c1ac1b36569645576159f96d2d9b7c4853c21fe43235e6455` |
| 7 | `instance` | [smulCommClass](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/smulcommclass-source-edition-2.md) | 79 | `declaration-track:d5d39fcb79a32cafc26dfec9217578ef2da4061474a7b6f3f162ba2f6043a094` |
| 8 | `instance` | [smulCommClass'](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/smulcommclass.md) | 83 | `declaration-track:8c6753407deb6bacf8744a4278f3d88ac38427d7110c7ca8c058530871dff8eb` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 88 | `declaration-track:4908cc830960dc78d2b54d3961691bcfb7930489266a0402f19ded294dc73037` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:3bc0d4c224c4212b4ba9d68c6f4956bd7d481f7e456438822ea92769daf438cc` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 115 | `declaration-track:50ae362d7e08fe39bd7c3fded41a3787bea4ff40a11d5f4e35c808d14f5f8a57` |
| 12 | `theorem` | [le_def](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/le-def.md) | 119 | `result-track:686108c779b32c8ea601e2be8c3946e9f6bbe9d100110e34a0fbc20a471a76be` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 124 | `declaration-track:2c625357589f3df66a559990ccb77f7aa00f61b2cd4bc8c82ef4e492e571e0fb` |
| 14 | `theorem` | [sInf_toSetoid](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/sinf-tosetoid.md) | 135 | `result-track:a01ba611e736111e57fc5cfd5af74d8cddfdc2f9466ba831bda0bf7ee8bb3e9b` |
| 15 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/coe-sinf.md) | 142 | `result-track:89ee3daa13695bdf0ec8c95c2a914dcfbfa2d3a7c00a700cee69e8e106d4af46` |
| 16 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/coe-iinf.md) | 146 | `result-track:055e5d01ac4fa801d157543c1dce403565ba0ec647ade12250220a2eefb6479b` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 149 | `declaration-track:e5e31bd0b2ebff2c7a37ea78610752970967bb90f83588a2acd5f8860bc7ae57` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 156 | `declaration-track:751b8edd1ca408b9f1bd58814dcc24415218f91a7f8147c06f7c7e08a53ab594` |
| 19 | `theorem` | [coe_top](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/coe-top.md) | 179 | `result-track:c30c134648009413ad8aec52a802b4990bd9b1935ce9476fe67a2079be57a667` |
| 20 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/coe-bot.md) | 182 | `result-track:c8438b51a26dda0c56a49e0b73aa6383a83e92b1bc0f533ed922a25ab50a377f` |
| 21 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/coe-inf.md) | 187 | `result-track:a2146c542cc910506ffb0fc84b97f0297fffa25eea83b247ee61ef21e94a3eb6` |
| 22 | `theorem` | [inf_iff_and](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/inf-iff-and.md) | 190 | `result-track:d7cde5f7825a8744b7aef8a8acddf484a59cefbb30c7c1bda1bf1aa157ca349b` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 193 | `declaration-track:dc1ea75e2a6555cc07bb672d6b418289a356404ffde1dcebb02e478d90bc0637` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 198 | `declaration-track:61e8328709fd7c2ef051b5985881087b72625bd64ec5d74ace301065b96d91db` |
| 25 | `theorem` | [nontrivial_iff](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/nontrivial-iff.md) | 201 | `result-track:d2c1d8f0457b7d46adb1c6a890ad308a87e95f986fff993df1834080fc60c490` |
| 26 | `theorem` | [subsingleton_iff](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/subsingleton-iff.md) | 206 | `result-track:ebca7d94e8933c8558857134d29d4aa3e278f1350ee414cef228eb687ef2197f` |
| 27 | `theorem` | [ringConGen_eq](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ringcongen-eq.md) | 211 | `result-track:73acd6c7417a91eb93255983b747f050cae554173494e2d46e1cb35ed29a5cf5` |
| 28 | `theorem` | [ringConGen_le](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ringcongen-le.md) | 223 | `result-track:69bdf90496df08103c6fd4bf5885b6552eb7fd917cb7d34bd989c34288755995` |
| 29 | `theorem` | [ringConGen_mono](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ringcongen-mono.md) | 229 | `result-track:6bef5f6992a446c3e795c0a965e2362e4a3fa4c4c02eb11bd6d119be09b4cf34` |
| 30 | `theorem` | [ringConGen_of_ringCon](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ringcongen-of-ringcon.md) | 234 | `result-track:bc771924f3bba2d2416dfa527e985c79022fadeedd858f549eb522873ec005c3` |
| 31 | `theorem` | [ringConGen_idem](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ringcongen-idem.md) | 239 | `result-track:44f38f7d5ab91ac363a619195c4aa00f996177d4cd398e12313040fb10678f2c` |
| 32 | `theorem` | [sup_eq_ringConGen](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/sup-eq-ringcongen.md) | 244 | `result-track:47d31c17da16f1a15ada4bc633a4c0c30f474ce9677485f62e9b392b9919e33b` |
| 33 | `theorem` | [sup_def](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/sup-def.md) | 251 | `result-track:6a18761811360ce30fc1957c20f9d911cbb53ad7b40015f6856bd56175960ec3` |
| 34 | `theorem` | [sSup_eq_ringConGen](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ssup-eq-ringcongen.md) | 257 | `result-track:e5979c4cc1254380f3eaaded1f937513c0c5d4988f4be9e478e98079287fd0b2` |
| 35 | `theorem` | [sSup_def](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/ssup-def.md) | 266 | `result-track:d1402b530dad4c24b61f29e635726fbf1dfb1faa6b76c068d3d06a7a17bdff5e` |
| 36 | `def` | [gi](../../../../CommutativeAlgebra/CongruenceBasicNamespaced.lean/declarations/gi.md) | 276 | `declaration-track:9e173875afac8960a2d1b49cd267ab933f2fadae415589d6ca4142889ba8b11d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4297d8bb691b55cba59a52edd3467d9bb7128ba47b363146cae11cb9e157dffb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
