# Verification target: Group Theory Torsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b00ade7827985a30f9483f185a56eb58681465a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b00ade7827985a30f9483f185a56eb58681465a`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Exponent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion.md) | 55 | `declaration-track:edd5aab53094e0b65f3cf1efdfe17c316b8676b207a9aab629b31e598e6d2455` |
| 2 | `theorem` | [not_isTorsion_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/not-istorsion-iff.md) | 63 | `result-track:5673e68c67422311b563b1921fcd01a1673eff67743941ca123e77b48e9b5e4d` |
| 3 | `def` | [IsTorsion.group](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-group.md) | 74 | `declaration-track:29418092bafdfe9259e9c0bbffa9f68d6319f1ea7861f238862f2c08c0f97c10` |
| 4 | `theorem` | [IsTorsion.subgroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-subgroup.md) | 89 | `result-track:ee094a380aadbfe3460ada9fba4cf6b05be73a2278df8eb8656f1562d44d7cab` |
| 5 | `theorem` | [IsTorsion.of_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-of-surjective.md) | 97 | `result-track:1f5e98a01554fd4a64f9b1459898da0662184b6bbac97ee81996218978a8db4d` |
| 6 | `theorem` | [IsTorsion.extension_closed](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-extension-closed.md) | 107 | `result-track:79e62a119d3c8bc9e09daf56b221878c3f24c8e0d9d65413417730dfadf0fef4` |
| 7 | `theorem` | [IsTorsion.quotient_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-quotient-iff.md) | 123 | `result-track:2b16b780242e6dc88e6de199370779240218fe80b4dab885f81a98c842551751` |
| 8 | `theorem` | [ExponentExists.isTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/exponentexists-istorsion.md) | 132 | `result-track:502851324b9a6e42fa96abc80869d9177fa155e7ee2f06841e77db3937522eb8` |
| 9 | `theorem` | [IsTorsion.exponentExists](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-exponentexists.md) | 141 | `result-track:07427913cc62c64fdfe1286b2de01531cf89230f0aef3f682ff9ca7b35eaa4c8` |
| 10 | `theorem` | [isTorsion_of_finite](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-of-finite.md) | 150 | `result-track:cc8992a2c6510d7a235186ae5350c5d7735a644d2fc77a6d4c1aeaa618a94fc3` |
| 11 | `theorem` | [IsTorsion.module_of_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-module-of-torsion.md) | 165 | `result-track:0412b3f98437c4d2cdf14c4495288465c801acf1d698401f2c5bd85cc85e5cec` |
| 12 | `theorem` | [IsTorsion.module_of_finite](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-module-of-finite.md) | 173 | `result-track:ef10e637f62eb2e085f45def09010f91e1e34f4cfb436656befe34beac3ed51a` |
| 13 | `def` | [torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsion-source-edition-2.md) | 192 | `declaration-track:8326a280d3a0e28dfa3825816a7f9d84bffec7c0e14b8a2a5d9672123d74ff5b` |
| 14 | `theorem` | [torsion.isTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsion-istorsion.md) | 203 | `result-track:5a03f7209f0ce57771f96d45782cdd74785095fc0716634727ffa5b8d323dc2a` |
| 15 | `def` | [primaryComponent](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/primarycomponent-source-edition-2.md) | 220 | `declaration-track:d1f4577774e0da01c72844f72151f7200e9e42107ff79774a5b9fc537550ac34` |
| 16 | `theorem` | [primaryComponent.exists_orderOf_eq_prime_pow](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/primarycomponent-exists-orderof-eq-prime-pow.md) | 239 | `result-track:326283fa01661e0760a132fd42f418cef7e60a5b63889af67c5552db0b6c6ad3` |
| 17 | `theorem` | [primaryComponent.disjoint](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/primarycomponent-disjoint.md) | 246 | `result-track:1bbcc554b36a4a71e2599ae57a131e8c5eebf175cd4e060c877bc1e879738cf9` |
| 18 | `theorem` | [torsion_eq_top](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsion-eq-top.md) | 266 | `result-track:56192570a00ef5d2bfe5b8c34056432a259f366062be29c4d0e9db4eb9aa71ad` |
| 19 | `def` | [torsionMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsionmulequiv.md) | 272 | `declaration-track:15ab1230292fdfa62d49fec5cad608d21008467334d469e370f8f4454adeb7c1` |
| 20 | `theorem` | [torsionMulEquiv_apply](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsionmulequiv-apply.md) | 278 | `result-track:63da9e0ff8650c9d7c2caf5fe1f425e994b168beb8eceff3bd0dccc6b5c293c2` |
| 21 | `theorem` | [torsionMulEquiv_symm_apply_coe](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsionmulequiv-symm-apply-coe.md) | 285 | `result-track:63391289990b5343f061ffeb01fe8617c1a341d44283d1bfcbadb5434ebfc421` |
| 22 | `def` | [Torsion.ofTorsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsion-oftorsion.md) | 297 | `declaration-track:fc6e96a1161717436b3e6cb19c8707b817c7d15258ddfc797b530a86391733b4` |
| 23 | `def` | [torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsion.md) | 312 | `declaration-track:646663102f3a78ee778c508feb1225266e9ac1f0e3a627b8594405a98ad5bacf` |
| 24 | `theorem` | [torsion_eq_torsion_submonoid](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/torsion-eq-torsion-submonoid.md) | 321 | `result-track:93e45ea82dbf96cf6c55f66b3fd6b0a207ab06ae7529b1bfadbb436ded77b18d` |
| 25 | `theorem` | [mem_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/mem-torsion.md) | 327 | `result-track:e2a87ec9c471898b4beb0757eab57ecdc36ab7456b08746f5571a72e30dd6886` |
| 26 | `def` | [primaryComponent](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/primarycomponent.md) | 335 | `declaration-track:3ee6da1b8e0e82230359ee949dc62470d09dad6a491f15b9bc8719c08025571d` |
| 27 | `theorem` | [primaryComponent.isPGroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/primarycomponent-ispgroup.md) | 344 | `result-track:2f214f36f25db202355b722c62edb74114300b38fd7bff02fee8104edf893e6d` |
| 28 | `def` | [IsTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsionfree.md) | 359 | `declaration-track:53e63a67f81f1f4d8259a0dd885983c51e0adf3eca4449328ae4d87d731f5e1b` |
| 29 | `theorem` | [not_isTorsionFree_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/not-istorsionfree-iff.md) | 367 | `result-track:3c6d882c5fa81ac7c4fe706b1a9018c44bc3b67b24c9622e3658a0b88e8c843f` |
| 30 | `theorem` | [IsTorsion.not_torsion_free](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsion-not-torsion-free.md) | 383 | `result-track:07446860a875fca5c1b990a7012fc7aab75e8044a89e893b52037039a09bfee0` |
| 31 | `theorem` | [IsTorsionFree.not_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsionfree-not-torsion.md) | 393 | `result-track:91860bde9ba854f9dd2b1c6bd036bef6d67d8aff52cd9c89cd310f76a1bc34e4` |
| 32 | `theorem` | [IsTorsionFree.subgroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsionfree-subgroup.md) | 402 | `result-track:2108885198500e6f770de48467bc8005f9174fbf379adb2f188e72ffb3298566` |
| 33 | `theorem` | [IsTorsionFree.prod](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsionfree-prod.md) | 412 | `result-track:da1b67d687e2c9f49d0aadc7788559a8ee8944c3f3187042376480bc2a922533` |
| 34 | `theorem` | [IsTorsionFree.quotient_torsion](../../../../GroupTheoryAndGeneralizations/GroupTheoryTorsion.lean/declarations/istorsionfree-quotient-torsion.md) | 432 | `result-track:0497b220ebe186c44de1242e1b3682b12ed8a45ae7a221f5e9b6d8d085e1e357` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2a18f8b060dec82787be8de8667dc2e12e8c76f9e77cd002b72e51e532bc87a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
