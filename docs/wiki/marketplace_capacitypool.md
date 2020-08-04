### Marketplace is a solution to help having a complete online experience over the ThreeFold grid, allowing provisioning of various resources.

- Capacity is limited on testnet:
    - **freefarm** and **mazraa** mainly 
    - **mazraa** isn't that stable bandwidth and node acceptance for reservations, taking lots of time
    
- ```marketplace.grid.tf``` marketplace can be used to provision 3bot from branch **development_capacitypool**
  - Deploying 3bot branch used should be `development_capacitypool`
  - When deployed 3bot make sure to go to `/admin` -> `settings` -> set the test identity as the default (capacity pool enabled only on testnet)
  - For testnet tokens (wallets can be created using stellar or admin dashboard wallets manager section https://github.com/threefoldtech/js-sdk/blob/development/docs/wiki/tutorials/add_funds_to_wallet_dashboard.md , they will get it activate using friendbot with 10000XLM to be traded using https://testnet.interstellar.exchange/app/#/home
  
- known issue in zos:
  - mainnet https://github.com/threefoldtech/zos/issues/871
  - networks mostly fail when deploying on Mazraa farm because nodes don't respond to the network workload reservation. these workloads remain deployed which causes the network to fail everytime it tries to update. (we tried to harden this flow and delete these workloads, but no guarantee that it works)