# Verification target: Filter Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45207533bae6c63dee158ccae56bcc45e0dfd0e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45207533bae6c63dee158ccae56bcc45e0dfd0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instGroupWithZero](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instgroupwithzero.md) | 38 | `declaration-track:6105642e0375b1038bc8016b5f2964baea7c9478945ef4f5cd3a0345d11974ca` |
| 2 | `instance` | [instDivisionSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instdivisionsemiring.md) | 45 | `declaration-track:fd17427da6ebe061def74d58577fcaa67b812298fc10ea1bebc0107c099b260b` |
| 3 | `instance` | [instDivisionRing](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instdivisionring.md) | 51 | `declaration-track:87794081a9206b392adaf94a60c9e8418f762ae57784c1fe49ac66444848b473` |
| 4 | `instance` | [instSemifield](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instsemifield.md) | 57 | `declaration-track:98169d54576c8455d54a8d417e7767d2386f188ed410c3e193e3adc6d9629142` |
| 5 | `instance` | [instField](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instfield.md) | 61 | `declaration-track:0c60100f83ee5b0105c58d789a85f5a807e5bd19885b4bd9e4c864087502f1b6` |
| 6 | `theorem` | [coe_lt](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/coe-lt.md) | 65 | `result-track:34f2773409da1e5f401929baa7e496ccc13613860fd47c00bfdb46d9b3001aa4` |
| 7 | `theorem` | [coe_pos](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/coe-pos.md) | 68 | `result-track:789e8d7a8d446b97676de8dad4b146b4a7943079e366867865b920d699e1966f` |
| 8 | `theorem` | [const_lt](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/const-lt.md) | 71 | `result-track:49b186a35923560831c5a843b8918b1e3d2e5ce187b954dea372b10c39bd7fb7` |
| 9 | `theorem` | [const_lt_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/const-lt-iff.md) | 75 | `result-track:d96ef9bfb963943124aa7df3e9bd12b4a34b1b38f1d5e2845894e7d7d6343404` |
| 10 | `theorem` | [lt_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/lt-def.md) | 78 | `result-track:93bfdc18fe8f47d812c03c5f7a27e4376ecd9922fee5c11bd1b301d2b6bf7c0d` |
| 11 | `instance` | [isTotal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/istotal.md) | 82 | `declaration-track:78b5f537195b4b50e1faf571f366c0e3f1d389cc1a269a6ebfe79c5282b09da3` |
| 12 | `instance` | [instLinearOrder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instlinearorder.md) | 88 | `declaration-track:f2362328fda37562f3c80cc9f4ab25d502eab03961a1529a5abf9dec7650f252` |
| 13 | `instance` | [instIsStrictOrderedRing](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/instisstrictorderedring.md) | 91 | `declaration-track:a904efac6379c62b513816d26474763b155a6c96873288d3159382acd6751b10` |
| 14 | `theorem` | [max_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/max-def.md) | 98 | `result-track:4750a6b2343a3683d8727aed11c4d021b67b2cb1f682325fcc0424743b076627` |
| 15 | `theorem` | [min_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/min-def.md) | 106 | `result-track:77121405148269b31c2f57e4ff58bd273b91675ed5768033cee3f7b1c9c4759c` |
| 16 | `theorem` | [abs_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/abs-def.md) | 114 | `result-track:0eec93df02b3d246b5d8e520afd8b667e15826e4e7859fe32bebee59d4f324a5` |
| 17 | `theorem` | [const_max](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/const-max.md) | 119 | `result-track:54e5b6f17126e450fd1b08e546165d71866d4d26d4a4a70132dacc4d49b19667` |
| 18 | `theorem` | [const_min](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/const-min.md) | 123 | `result-track:5cf2024688c8bf5ca7f4747f2579f589abe9d7045667f2f9b21f46ff5dab8d45` |
| 19 | `theorem` | [const_abs](../../../../../GeneralTopology/GeneralitiesInTopology/FilterProduct.lean/declarations/const-abs.md) | 127 | `result-track:1cba0445cd06b33d54312bbe79fb228175e452dca3751558f6e3217328fa2a6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=448a33893287c634c9441328924c2dec6f256290ad5172b9a5f2615cc04ee319 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
