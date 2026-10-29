# Optimized Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abfb6ae6c69269bde59d2093d77286cce183974e` · SHA-256 `03de6f04b5c94d5cb4e53ceeb330b719c967057004aeb5d9cb8eb9470d0ffb3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArray.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IntervalArray.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","mathematical_subject":"Computation.DataStructures","original_sha256":"b3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/ML/Optimized.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 LeanCert Contributors. All rights reserved.
Released under AGPL-3.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.ML.Optimized.IntervalArray
import LeanCert.ML.Optimized.QuantizedLayer

/-!
# Optimized Neural Network Verification

This module provides high-performance implementations for neural network
interval propagation, designed to scale to real-world networks.

## Key Optimizations

1. **Structure-of-Arrays (SoA) Layout**: `IntervalArray` stores lower and upper
   bounds in separate contiguous arrays for cache efficiency (~5x improvement).

2. **Split-Sign Matrix Decomposition**: Pre-decompose W = W⁺ - W⁻ to eliminate
   branching in interval matrix multiplication (~2x improvement).

3. **Common Exponent Integer Arithmetic**: Align all values to a common exponent
   for pure integer (GMP) arithmetic (~10-50x improvement).

## Main Types

* `IntervalArray` - SoA interval vector representation
* `QuantizedLayer` - Layer with aligned integer representation
* `QuantizedNet` - Full network with quantized layers

## Usage

```lean
import LeanCert.ML.Optimized

open LeanCert.ML.Optimized

-- Create quantized network from rational layers
def qnet := QuantizedNet.ofLayers myLayers

-- Fast interval propagation
def output := qnet.forward (QuantizedLayer.alignInput myInput prec)
```
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArray.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d

````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddca13b2e4eb51ed3950e1388d1cfda8c5bc508f7e4d0e960bb8e3fd21ae01fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Optimized/Varianteec7122c311ea79b3de5e655b765f18b973b8daabbced388397bbeac2897a8b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
