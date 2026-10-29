# Verification target: Commute Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4721186b92a28eea4f6b5962c4ebd77b99f0751a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4721186b92a28eea4f6b5962c4ebd77b99f0751a`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Commute](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/commute.md) | 33 | `declaration-track:47647057234d136db964425e0a94c41a6758f3509dc7cad458a3f3fef2af70ca` |
| 2 | `theorem` | [commute_iff_eq](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/commute-iff-eq.md) | 40 | `result-track:b6d3fb18d288d97d38031f89315a16b9dc6791204f3a06891e825d27ffb62c31` |
| 3 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/eq.md) | 50 | `result-track:ec4c86397ca8061a732bbed6af779532bb18344bf09ee7050a4fcabe25d1bc8c` |
| 4 | `theorem` | [refl](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/refl.md) | 55 | `result-track:240b865eb6a42b0e4d10018900212c3f5a5b1ff90c7e0774f033b871a7dfb002` |
| 5 | `theorem` | [symm](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/symm.md) | 60 | `result-track:a426cceecca33b213f8315a990fb125381d5579456e0b72ea7e67a05e895d813` |
| 6 | `theorem` | [semiconjBy](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/semiconjby.md) | 64 | `result-track:cdfee118096c009f03a10f0ae97dad742b76667045c2e1a190e580a62164f9b5` |
| 7 | `theorem` | [symm_iff](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/symm-iff.md) | 68 | `result-track:295dee99a2e36f16956fc4bb1c75b4799537a945e068b80bbefdd8858c3865c2` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/instance.md) | 72 | `declaration-track:9bd35221bb042f8aa94e8e6d1913021f5f43f49471a71d40a3c32eef7edf381c` |
| 9 | `instance` | [on_isRefl](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/on-isrefl.md) | 77 | `declaration-track:c1c49eed2f1cea1c5b48a2460bfb4b50e0a9818a7236d650c4bd086c1b3914e5` |
| 10 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-right.md) | 89 | `result-track:6a0484f3921f1fe8f81503e370fccffb2700341a08e94cd73946eb6c355ed47a` |
| 11 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-left.md) | 95 | `result-track:3ddf36d41e88ae0a596a6ec66c81f6b0dad4d84acd4ab32b8e128af553d595e6` |
| 12 | `theorem` | [right_comm](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/right-comm.md) | 99 | `result-track:085fa4fdfe5b339591da2404e807b6190545396483f0ba51d0cd548726ae3550` |
| 13 | `theorem` | [left_comm](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/left-comm.md) | 103 | `result-track:3c3a2dc3e75b6f4e873346b2a4df9b041cce5a3258526b242254ce01ce2f95e7` |
| 14 | `theorem` | [mul_mul_mul_comm](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-mul-mul-comm.md) | 107 | `result-track:cd6e782d80a837b237b2f3ad4bbb507a306aac992d580825300cb397a575cdd9` |
| 15 | `theorem` | [all](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/all.md) | 113 | `result-track:49c7748352972ff938b615f05b881cec4e9d1b939f228e0ec9cf296ab0ac202b` |
| 16 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/one-right.md) | 121 | `result-track:5314e5df4a0dbb2d20d3ac1be57aeb5aa5a8e534aa2eb001f2516931fccfb4e7` |
| 17 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/one-left.md) | 125 | `result-track:b2883514d50ef67684ada624e7a7912c51d06fffd368dfd543a06cd881b7bd8c` |
| 18 | `theorem` | [pow_right](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/pow-right.md) | 135 | `result-track:479aee5bdff815e5320ed82f88a5adcecf7ff79f723a1cce0476455f3489fc00` |
| 19 | `theorem` | [pow_left](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/pow-left.md) | 139 | `result-track:178110efa9fc58e79922fc114478d82e9f2d8ee4dbda2fdf46acdbc36494c4d5` |
| 20 | `theorem` | [pow_pow](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/pow-pow.md) | 144 | `result-track:324909da5843557bd3c17c598e359ed411cbb70f334048c2fb06cd8ecc9862f7` |
| 21 | `theorem` | [self_pow](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/self-pow.md) | 148 | `result-track:d3a73290a271264dc0b050d8c229bce8f1a587b6ebe9e8893a4c3472f22f210f` |
| 22 | `theorem` | [pow_self](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/pow-self.md) | 152 | `result-track:af33d2b7a8ba1115abdd39112452f6808eaf77433d07240715abfecf8d48c7b2` |
| 23 | `theorem` | [pow_pow_self](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/pow-pow-self.md) | 156 | `result-track:a11dcb95d16d92bee65d75095edcdc94ea7342265b7fb943805a0ac7d2f0bc13` |
| 24 | `lemma` | [mul_pow](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-pow.md) | 159 | `result-track:0499bbb041c212986f318d4d57ad0a049dab44b4b8d7043723203a75358b988f` |
| 25 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-inv.md) | 170 | `result-track:a5e18839661962db3acb7cc4654d15eea68277f5fb88e58e759d930e8f76d3f3` |
| 26 | `theorem` | [inv](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/inv.md) | 173 | `result-track:67bd9bb98500d5d0b537ddfcc9ea27435e5266d8cd7ee5e51b3de34cdfe237e9` |
| 27 | `lemma` | [mul_zpow](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-zpow.md) | 176 | `result-track:479d5696614f10babec00cc67e958c526535ec0968973a94c625b2635e8070ae` |
| 28 | `theorem` | [mul_inv_cancel](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-inv-cancel.md) | 187 | `result-track:abdbf9471c1078e2b072a9f1a44d11925f1868b9793cac105bc5c42c82928c56` |
| 29 | `theorem` | [mul_inv_cancel_assoc](../../../../GroupTheoryAndGeneralizations/CommuteDefs.lean/declarations/mul-inv-cancel-assoc.md) | 191 | `result-track:425ce7ba44fd5cbd7e49aa56917eede31d92450ef154d3249bbc31a0dac8e67f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99137d3fce57e7e0e55ef8b9f91c783d0649d688928e42c2540f071cf476ddc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
