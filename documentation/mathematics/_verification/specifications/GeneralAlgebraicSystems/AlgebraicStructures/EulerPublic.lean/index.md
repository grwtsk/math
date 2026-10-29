# Verification target: Euler Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c89a57fd68dc6e45f6e3dc5e910ed5daddc010",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c89a57fd68dc6e45f6e3dc5e910ed5daddc010`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEuler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler.md) | 55 | `declaration-track:d8148cc11f077e5c69d3ab422a6f0ab49da702d7231d536e6169811d49c8ac0c` |
| 2 | `def` | [euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/euler.md) | 60 | `declaration-track:99369589c81e33ae89506c8191d229c7757d2c19486563d5c71c6112d24e25ec` |
| 3 | `def` | [toEuler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/toeuler.md) | 65 | `declaration-track:c22f83cd6e110a7512f52ff7c61214181a09eec1d3f0bc875791dd616acb80a5` |
| 4 | `theorem` | [terminatedAt_euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/terminatedat-euler.md) | 74 | `result-track:ec93703b0a0f95ae864afbb4436430c48b0350afa0b71c573a1e53d49b2e83e6` |
| 5 | `theorem` | [exists_euler_s_of_not_terminatedAt_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/exists-euler-s-of-not-terminatedat-zero.md) | 77 | `result-track:6f2e765a985c6850e8de1596189ccdcd238ea896172df2edc0d5ca308b8d5ffe` |
| 6 | `theorem` | [exists_euler_s_of_not_terminatedAt_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/exists-euler-s-of-not-terminatedat-succ.md) | 82 | `result-track:42da75594950b6a3a5cf2790c98b7bb2593e78360142219f7e1fa848c2474133` |
| 7 | `theorem` | [isEuler_euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler-euler.md) | 88 | `result-track:1ad59da82637baf4e9eb1cb626362360832edfefb33ae9e0cefe1d2c382cee21` |
| 8 | `theorem` | [IsEuler.exists_euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler-exists-euler.md) | 101 | `result-track:51625b13f856ae24d0026b3170e0c8e6f839a7f25b4b4577783304f569831a78` |
| 9 | `theorem` | [isEuler_iff_exists_euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler-iff-exists-euler.md) | 122 | `result-track:f8225240dc5f7cc8c3e869bcb51a541bf3a1caeace20744ac15b23ced2912e14` |
| 10 | `theorem` | [isEuler_toEuler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler-toeuler.md) | 126 | `result-track:4f3bf15f1326130d430a10a2aeb7e8bdb447600accc9ff4fbbff9f9f50a958c1` |
| 11 | `theorem` | [terminatedAt_toEuler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/terminatedat-toeuler.md) | 129 | `result-track:ee5fd3c9f3d32a87a5c446cb06f1e019d3b008faed9c5085b929be650df3ae66` |
| 12 | `theorem` | [euler_s_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/euler-s-zero.md) | 133 | `result-track:37589afd0fa58a4febd22f802e7f929596d1644ed157347bfba5112e84f49674` |
| 13 | `theorem` | [euler_s_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/euler-s-succ.md) | 137 | `result-track:747a69e733425e2d84c15581773d8c1fecfa2e296c8009fe2aa4f606f5ae5ece` |
| 14 | `theorem` | [toEuler_s_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/toeuler-s-zero.md) | 141 | `result-track:fec29be986a1c86162b572a2328d7bd617b6f146105232ede046f9864fb8133e` |
| 15 | `theorem` | [toEuler_s_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/toeuler-s-succ.md) | 145 | `result-track:15af1cde3a97f60463753274ea6111f1fa6a6a4f52fdcf3add138367a10b8aab` |
| 16 | `theorem` | [euler_h](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/euler-h.md) | 157 | `result-track:1b3e13497b2b5d3553a899479902b40d8262251329ffc31f37ec1b7d8ca6d952` |
| 17 | `theorem` | [toEuler_h](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/toeuler-h.md) | 160 | `result-track:35b8f7a448a181f7910fd6143f9b555c7098b8c55c7b653eb0df9dbe93b7f2e7` |
| 18 | `theorem` | [partNum_euler_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/partnum-euler-zero.md) | 163 | `result-track:cb2697528cbd150dd27dfbec48a1ed97faf1e23fd2818119e99fb7ecac0a98bf` |
| 19 | `theorem` | [partDen_euler_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/partden-euler-zero.md) | 168 | `result-track:6b78cbd95eac0afefcec45168f71b952f572bc324af337f6d851c7a10c4319db` |
| 20 | `theorem` | [partNum_euler_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/partnum-euler-succ.md) | 173 | `result-track:c7a87de0ff9fbebdab949755c931fd68553b29b7a471b7b34c56180f0f1902c2` |
| 21 | `theorem` | [partDen_euler_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/partden-euler-succ.md) | 178 | `result-track:180bf56bce0cb74fffb01124b8fc2295423fde5c7ad61a37e0b607df399575b2` |
| 22 | `theorem` | [dens_euler_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/dens-euler-one.md) | 182 | `result-track:c471efea03026ba8e5dc55051a46fd3241293b0d4b447ea73c89aa7c7106f509` |
| 23 | `theorem` | [IsEuler.dens_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler-dens-eq-one.md) | 192 | `result-track:f4857757dca76629d585e176fd4af3fe85c4f09429b73c7074c653f7dfd1fbc2` |
| 24 | `theorem` | [nums_euler_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/nums-euler-aux.md) | 210 | `result-track:7d8053400ff59748cc7ca53428781b373c0496413506dad1234cabd025007b1f` |
| 25 | `theorem` | [nums_euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/nums-euler.md) | 223 | `result-track:4dee346d21e1fe5e0a246e465be4ea1c168ea001cbaa6cc820fcfb52a133e1c0` |
| 26 | `theorem` | [convs_euler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/convs-euler.md) | 240 | `result-track:95efa675465767e25b958ea3e2505eb629754bb6b387831ff20f6e082316b550` |
| 27 | `theorem` | [IsEuler.toEuler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/iseuler-toeuler-source-edition-2.md) | 247 | `result-track:c9b69a4e9f2066a05201b1268c113049e96d2e494d6d94c7c1fcd4f063765f5f` |
| 28 | `theorem` | [convs_toEuler_of_forall_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/convs-toeuler-of-forall-le.md) | 267 | `result-track:6591941b394938592186e0896265ef454296e0ccf5345100bd7b09e48283d50b` |
| 29 | `theorem` | [convs_toEuler](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/convs-toeuler.md) | 300 | `result-track:68221410994a40f1197571e1f1fb5c01be4e07e5405c1acf132e07a4b02773d1` |
| 30 | `theorem` | [convs_eq_sum_of_forall_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/convs-eq-sum-of-forall-le.md) | 303 | `result-track:b6bf1704a1451643c74976e336c82f8689bc632b11cdf8966c9c15f18e0ce8c3` |
| 31 | `theorem` | [_root_.SimpContFract.convs_eq_sum_of_forall_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/declarations/root-simpcontfract-convs-eq-sum-of-forall-le.md) | 348 | `result-track:a72b558fee971c6c426a40524f64c649fc53bd535cf806791759f2aa000a1c33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5727a9b0d1fa297bd9128b6316e1dabdf619e16c923f2e15741d7926403a7d40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
