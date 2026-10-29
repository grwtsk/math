# Verification target: Valuation Ring TFAE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "478f82233b49ba7a8158637a819d0b92152e3ebf",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `478f82233b49ba7a8158637a819d0b92152e3ebf`.

Source path: `GRWTSK/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Integers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bezout` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ValuationRing](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/valuationring.md) | 42 | `declaration-track:e88d73c58ec8854115619f7edaa8f49a4c88f1f5e773e9de12da1631b889d2c0` |
| 2 | `lemma` | [ValuationRing.cond](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/valuationring-cond.md) | 47 | `result-track:1a7cce9dc13344158e01707c301c226410cc78bf600001934c505acb21f0b5f0` |
| 3 | `def` | [ValueGroup](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/valuegroup.md) | 59 | `declaration-track:aa0e292ea7e1ce3d911b1b6f3ef6a3ef9f07fd51d9602b387658b030419a0107` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-2.md) | 62 | `declaration-track:1c0546a9d2015f75366169ec4537fd9bdee4aacc4ad197bd3eb4a55644b19edb` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-7.md) | 64 | `declaration-track:88fbb2db913e139f0df65cfba79f88d3be3cb2afc8b141fe069284a4162455d1` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-12.md) | 80 | `declaration-track:d838b0d6a829695efdec6de55715111eb55f6295f4452a3c52635a07967423cf` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-9.md) | 82 | `declaration-track:b663b62393ee353a8991224ba014b4bdc9936133b161371ac03a1b843802859b` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance.md) | 84 | `declaration-track:109176dae9031aad51cb1a794d6b6e751df1c537279723b8a1483e2a2a86190a` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-5.md) | 95 | `declaration-track:36fddf73e5791f9f40074ccd76ab86a8b9138ad023bd964563935382675b11fd` |
| 10 | `theorem` | [le_total](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/le-total.md) | 108 | `result-track:57a5e23c87cee068add128b759eced8418d7b752064b7eff20ebed6ed1958f00` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-3.md) | 129 | `declaration-track:23069d717776f12769d01601c3e8b14461445c50841d252cb121580869f9c8d1` |
| 12 | `instance` | [linearOrderedCommGroupWithZero](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/linearorderedcommgroupwithzero.md) | 148 | `declaration-track:6eb72c113493e7ffde9d0ccd88360c32adf8bb5c6f4a7a6605babd6958c621d7` |
| 13 | `def` | [valuation](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/valuation.md) | 178 | `declaration-track:c2c0d4995f10f40a773a27c8edda6ec0a1cc646bfb21610afef878d222b2a8cb` |
| 14 | `theorem` | [mem_integer_iff](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/mem-integer-iff.md) | 205 | `result-track:411ba9c4e312cbbce9933f31f81d2b6226cd575790088f76a8d4dcebb02491ad` |
| 15 | `def` | [equivInteger](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/equivinteger.md) | 216 | `declaration-track:2883c4b856d27cfa9512602e6c6838fe7dad89f1ee55fd59765efb1e93790c6d` |
| 16 | `theorem` | [coe_equivInteger_apply](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/coe-equivinteger-apply.md) | 235 | `result-track:c9d8bf6769e66a2507eb2be72a036175b48a45d4a6ac6c0d40cf5a31844c4a31` |
| 17 | `theorem` | [range_algebraMap_eq](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/range-algebramap-eq.md) | 238 | `result-track:510d9eb02215fc2f5e58136b5eb9e7d122e0dd9ef735c642d164db07cf90626d` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-11.md) | 248 | `declaration-track:d18530151224b69b91387a1d4c89357814996c05ec4705ff0ce84f10ec3e6295` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-4.md) | 260 | `declaration-track:3467ccab7cdfb79a6c40ecc355fef54a668d2ee36a1b3b719085efe8093844be` |
| 20 | `theorem` | [iff_dvd_total](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/iff-dvd-total.md) | 285 | `result-track:32aedfc39e843f41bf838a599ff80a9662be87cd95398a07d7f4416fd88b1df2` |
| 21 | `theorem` | [iff_ideal_total](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/iff-ideal-total.md) | 292 | `result-track:4be34aa72ea47699f0dca4cc56ee77ea4898166d02aa80e9e36a185e26e7e9e5` |
| 22 | `theorem` | [dvd_total](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/dvd-total.md) | 302 | `result-track:d2bb2d85e2568deea70ea4b3454bc5cbd65318948f9c592e2bd3e2eb5c10f08e` |
| 23 | `theorem` | [unique_irreducible](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/unique-irreducible.md) | 306 | `result-track:e1a45421ae484c788cf52421669024fcf49fa1cb7f1b9206c54442b8594a1a85` |
| 24 | `theorem` | [iff_isInteger_or_isInteger](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/iff-isinteger-or-isinteger.md) | 315 | `result-track:bb6fdaec284af002502dec0c9fbb70dcbfc9f3dd34c77d3a8597c9819fc0cc05` |
| 25 | `theorem` | [isInteger_or_isInteger](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/isinteger-or-isinteger.md) | 341 | `result-track:2041f714fb61bd2c4d2f0ab7327effccf0dc2269b48c8fcf24572fe0c1b340d7` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-10.md) | 349 | `declaration-track:c0b52da12ab3cb7cfef1d99ba300f3b6aab5165d0c69e2ca76618298740e56ce` |
| 27 | `theorem` | [iff_local_bezout_domain](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/iff-local-bezout-domain.md) | 358 | `result-track:97c6e3a93635239dd47259d2985557c2bd57572f685c4c6e16c7c754e660944d` |
| 28 | `theorem` | [tFAE](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/tfae.md) | 381 | `result-track:a754cc4f10f8edcb3333da1391441e93db5005362df0b066c40a49cbc78221bc` |
| 29 | `theorem` | [_root_.Function.Surjective.valuationRing](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/root-function-surjective-valuationring.md) | 395 | `result-track:d9fbb632dc4d677079a7372addcf05cafa61648447d0f63cbddd01c8e2372a33` |
| 30 | `theorem` | [of_integers](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/of-integers.md) | 411 | `result-track:a340248550477530948761665d55ed00bb785a0128903dc31180d7051071004c` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-8.md) | 428 | `declaration-track:a214d0f24ba31faa282d101a5d127ffe845000014fd5ad759e270b896b1a50c6` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationRingTFAE.lean/declarations/instance-source-edition-6.md) | 443 | `declaration-track:39fb93babcde34be1e6048d28654561bbba1cce26e9722cebae9770a6fa7d03d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9eefd2167d4697813c4d0b355a8bd87e43fd6bde0c5628eee0865f21a31ddf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean","GRWTSK/_verification/specifications/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
