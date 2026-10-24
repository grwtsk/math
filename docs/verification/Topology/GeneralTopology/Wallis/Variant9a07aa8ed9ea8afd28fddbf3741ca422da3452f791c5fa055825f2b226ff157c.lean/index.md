# Verification target: GRWTSK.Topology.GeneralTopology.Wallis.Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a78bf30ff2d7ea5662c39f11895108e7e9bb49bd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a78bf30ff2d7ea5662c39f11895108e7e9bb49bd`.

Source path: `GRWTSK/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/macro-rules--ebca37119a36cef4147ebd4b.md) | 51 | `declaration-track:ebca37119a36cef4147ebd4b5a39dac67f57c6ac9802d0fd4214e1aa4ee9029e` |
| 2 | `def` | [W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/w--7912f028595bb476481aba47.md) | 56 | `declaration-track:7912f028595bb476481aba47ef7cead4830ed5bba95a96aeec527cc4f00ed2b0` |
| 3 | `theorem` | [W_succ](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/w-succ--76b7e3307e8e282f5406767f.md) | 60 | `result-track:76b7e3307e8e282f5406767f9ee52e3f7421638003cc5b938903634edab712d4` |
| 4 | `theorem` | [W_pos](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/w-pos--f5c292f706d142ed8f6301ea.md) | 65 | `result-track:f5c292f706d142ed8f6301eadbfc25b8a7ee50bda373e9466a1a0cd8e29d33ba` |
| 5 | `theorem` | [W_eq_factorial_ratio](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/w-eq-factorial-ratio--8c961af171237fe7a3f975a8.md) | 72 | `result-track:8c961af171237fe7a3f975a814b507fb8fe15e0eb76712a7d21a6720ff9d9634` |
| 6 | `theorem` | [W_eq_integral_sin_pow_div_integral_sin_pow](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/w-eq-integral-sin-pow-div-integral-sin-pow--5762129a64d9066e76f9a434.md) | 88 | `result-track:5762129a64d9066e76f9a434511a04495c99658549e7c98d29c67a9e7020a7d7` |
| 7 | `theorem` | [W_le](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/w-le--1c2dbc00b2cabb763870c72f.md) | 95 | `result-track:1c2dbc00b2cabb763870c72fa7a0dd64185ebc9a85a2a83c37c1ffd99315f6b0` |
| 8 | `theorem` | [le_W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/le-w--f4ab5fc582861543ca0d6a3f.md) | 101 | `result-track:f4ab5fc582861543ca0d6a3fafdb0f4df2a06e5702a49d34dbdec86559cac93c` |
| 9 | `theorem` | [tendsto_W_nhds_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/tendsto-w-nhds-pi-div-two--d6a4e15ba6c14d01d3cbda2f.md) | 111 | `result-track:d6a4e15ba6c14d01d3cbda2f37262d028349f6ef261caf401434f80e7fe66ec0` |
| 10 | `theorem` | [Real.tendsto_prod_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/declarations/real-tendsto-prod-pi-div-two--fd59670dacef4a63cf0c34f8.md) | 132 | `result-track:fd59670dacef4a63cf0c34f8132a71fd1b4766b122f8e3f6cd40bcef91ebf77d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
