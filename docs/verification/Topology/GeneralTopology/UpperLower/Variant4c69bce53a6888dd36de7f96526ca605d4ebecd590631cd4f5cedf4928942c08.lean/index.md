# Verification target: GRWTSK.Topology.GeneralTopology.UpperLower.Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "475bf775779dc05355954827cda269f46f201bce",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `475bf775779dc05355954827cda269f46f201bce`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.UpperLower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasUpperLowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/hasupperlowerclosure--9f6c22af40e60a05241aefa6.md) | 30 | `declaration-track:9f6c22af40e60a05241aefa6772c7e7af01e4db9609e0cf7e088d0cce91d9b52` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/instance--798e329eacd47cb71b9c9555.md) | 40 | `declaration-track:798e329eacd47cb71b9c955519fe4e8467c6e78b94f0012e0ed5c2c4ee6b6904` |
| 3 | `theorem` | [IsUpperSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/isupperset-closure--2f720a905856e7e33972f1d4.md) | 60 | `result-track:2f720a905856e7e33972f1d43873cf416b5bf840dcdfbaabd175196a8fa16fb1` |
| 4 | `theorem` | [IsLowerSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/islowerset-closure--01ab4c30deaea336e02d0114.md) | 63 | `result-track:01ab4c30deaea336e02d0114d19b3b62dee239560349cddeb00a40b4ba1d567a` |
| 5 | `theorem` | [IsOpen.upperClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/isopen-upperclosure--9d9ac814a6263b8278f97ba9.md) | 66 | `result-track:9d9ac814a6263b8278f97ba9c060a260f35b985e100edf86b385156653e35f15` |
| 6 | `theorem` | [IsOpen.lowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/isopen-lowerclosure--cb4fe97fa3c227270a6f0d04.md) | 69 | `result-track:cb4fe97fa3c227270a6f0d04ffccbc29a14d7542e74ee43a07660058c1ac125a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/instance--fbae0133933ddd7b414bcfc0.md) | 72 | `declaration-track:fbae0133933ddd7b414bcfc05021f66e1adbdfb0afffd9e1bcb2484eac41bc07` |
| 8 | `theorem` | [IsUpperSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/isupperset-interior--cccc8c9bf9bc18664df3440a.md) | 92 | `result-track:cccc8c9bf9bc18664df3440abaabefd1a6b39d81125aabfd59c498c9cab618af` |
| 9 | `theorem` | [IsLowerSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/islowerset-interior--9060e97e941cb09937d1a3e3.md) | 96 | `result-track:9060e97e941cb09937d1a3e3a8c65f87447866c7a81017e321c27099d6058335` |
| 10 | `theorem` | [Set.OrdConnected.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant4c69bce53a6888dd36de7f96526ca605d4ebecd590631cd4f5cedf4928942c08.lean/declarations/set-ordconnected-interior--272e2092e935b420199dee26.md) | 99 | `result-track:272e2092e935b420199dee26f1e9023125b3984e1bb7dfe9f6e48e154618f7a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
