model training
观察到大量图片运行时非常卡，而且apple silicon （MPS）对于ML的支持实际上比较一般，所以使用了一个小的train set和test set

Mac的cellpose的SAM模型不适合在MPS上训练，CUDA is not available
里面有相对位置编码的 attention：add_decomposed_rel_pos`
这些计算在 MPS 上会走到一个很重的路径，而且对 Apple 的 `MPS` 支持并不完整。
你日志里已经直接说明了这点：
    - `In MPS autocast, but the target dtype is not supported`
    - `MPS Autocast only supports dtypes of torch.bfloat16, torch.float16 currently`
这类问题在 Mac 上很常见，尤其是 `SAM`、`ViT`、`attention` 这些地方。


值得一提的是，
2026年上半年，在fuel （能源领域）paper, a team used cellpose to identify cellular hydrogen flames, and received nice feedbacks.
The cellular flames mean the large flame is separated to small ones. It is caused by diffusive-thermal instability.
