# Verification target: Group Action Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3ef0b6b8f68af12f3bb235d41401db60f4fcf6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3ef0b6b8f68af12f3bb235d41401db60f4fcf6`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance-source-edition-6.md) | 40 | `declaration-track:caadd968fd817f090f41112690a96fe1b6e4908c17564c78706f04c03ab85618` |
| 2 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/smul-def.md) | 43 | `result-track:188149eb0f2dda832b5e99912ddd04fac4fa3446bb3aed2b402fe5d97c764363` |
| 3 | `theorem` | [smul_isUnit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/smul-isunit.md) | 49 | `result-track:e007c625f591c83ce3d8a3167d744cd85441e2fea193e237f9ef600e6f35e9f3` |
| 4 | `theorem` | [Group Action Units Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/inv-smul.md) | 54 | `result-track:cd2b88927b6d245abe75a4283e4fde6cd963305f5733e80c3d400d5cec6528e5` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance-source-edition-5.md) | 59 | `declaration-track:baa49aab9ce3ebab2dc739d37463a5704b039527e377d67d14eff7f636d414dd` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance-source-edition-7.md) | 63 | `declaration-track:d7975f3fa94bfde4723474d2fc3b840a3c4d608ffc0beaf1f0926c05eea6d11b` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance.md) | 68 | `declaration-track:3e97e928e817123f0218d3aab59dc9e135f1f4d564c2d388b6936d1e97cc21c1` |
| 8 | `instance` | [instDistribSMulUnits](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instdistribsmulunits.md) | 73 | `declaration-track:c7cdcce92641298b0309e75e726e33985b6a4efbf20d6e8c732553f3ccb15b4f` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:9e4518b5c348e2a3fabd0647cfd3ebd5b775b3ccf7078a0dbc6c5472af2bf1e0` |
| 10 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:47971b0fbaf8b1f93793eb907e5d6323a1cc0a844e9652f6093e60065642d94d` |
| 11 | `instance` | [smulCommClass_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/smulcommclass-left.md) | 86 | `declaration-track:91aed5aa0e00e73b78308c527e70eaaa04c42e4b1e40df83fde351ad65b0e6ce` |
| 12 | `instance` | [smulCommClass_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/smulcommclass-right.md) | 90 | `declaration-track:6cd03647a81f7d93643497ecb8dbbde188af06e4ee747a5b3036f97bfbe3a5c5` |
| 13 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:76e822d792905ff2c36632874179a604058673a77668d7a5f9bd3f74aba55002` |
| 14 | `instance` | [mulAction'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/mulaction.md) | 104 | `declaration-track:09248a6d0ed0b2858976aac6c2bf10b9d778535f86d6fa59ed977298c7fd6d21` |
| 15 | `theorem` | [val_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/val-smul.md) | 116 | `result-track:9ee8befeba9ffdb006460fde655a2e0caa4159c969d942f344867b837383b1b2` |
| 16 | `theorem` | [smul_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/smul-inv.md) | 123 | `result-track:f9e6175f31225b9181cd268c8981c5ab3c40962bf2a931580bdc0e16a97defeb` |
| 17 | `instance` | [smulCommClass'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/smulcommclass.md) | 129 | `declaration-track:c6cac0e5c1fc012a170e28cad5b54a9e65ecbc14a382bd8303d83dd09a814134` |
| 18 | `instance` | [isScalarTower'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/isscalartower.md) | 136 | `declaration-track:fe28ed3ad2b2f051dfc83e71a312f8fff8902453a8e9d0a11c2a3380ce925aaf` |
| 19 | `instance` | [isScalarTower'_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/isscalartower-left.md) | 143 | `declaration-track:abf2797f267099907e7001f67f14a0398bbfbf5749d34f88e5ce7d7ae067e2fb` |
| 20 | `example` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/example.md) | 149 | `declaration-track:b4cdfd431dafafc2a824f7036dc12f4b27372dec9c6ddbbe533422114f6145d3` |
| 21 | `instance` | [mulDistribMulAction'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/muldistribmulaction.md) | 154 | `declaration-track:5c2b9e15257ec01edaf54243b504962598607004307735d1a78151b0edc1ef76` |
| 22 | `theorem` | [IsUnit.smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionUnitsNamespaced.lean/declarations/isunit-smul.md) | 164 | `result-track:b1fe76afa4793e20e06349214b36954ee5a26a8f5691f808d2f84c40d06a109f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63c2f9a3375fd08a78741de22db8aba85ee4dd86b449aadcdfa2b9a56a9e9557 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
