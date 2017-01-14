# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contracts = Contract.create([
                                {contract_type: 'HLTH', executed_date: Time.now.yesterday, termination_date: Time.now.tomorrow, end_date: Time.now + 10.days},
                                {contract_type: 'INSURANCE', executed_date: Time.now.yesterday, termination_date: Time.now.tomorrow, end_date: Time.now + 10.days},
                                {contract_type: 'SP', executed_date: Time.now.yesterday, termination_date: Time.now.tomorrow, end_date: Time.now + 10.days},
                                {contract_type: 'MA', executed_date: Time.now.yesterday, termination_date: Time.now.tomorrow, end_date: Time.now + 10.days}
                           ])
components = Component.create([
                                  {contract_id: 1, component_type: 'A5', begin_time: Time.now.yesterday, end_time: Time.now.tomorrow + 10.days, status: 'OPEN'},
                                  {contract_id: 2, component_type: 'E1', begin_time: Time.now.yesterday, end_time: Time.now.tomorrow + 10.days, status: 'OPEN'},
                                  {contract_id: 3, component_type: 'D5', begin_time: Time.now.yesterday, end_time: Time.now.tomorrow + 10.days, status: 'OPEN'},
                                  {contract_id: 4, component_type: 'C3', begin_time: Time.now.yesterday, end_time: Time.now.tomorrow + 10.days, status: 'OPEN'},
                                  {contract_id: 5, component_type: 'B2', begin_time: Time.now.yesterday, end_time: Time.now.tomorrow + 10.days, status: 'OPEN'}
                              ])
roles = Role.create([
                        {component_id: 1, customer_id: 1, global_customer_id: 10000, end_date: Time.now + 12.days, origin_system: 'NIB'},
                        {component_id: 2, customer_id: 2, global_customer_id: 10001, end_date: Time.now + 12.days, origin_system: 'NPR'},
                        {component_id: 2, customer_id: 3, global_customer_id: 10002, end_date: Time.now + 12.days, origin_system: 'APR'},
                        {component_id: 4, customer_id: 4, global_customer_id: 10003, end_date: Time.now + 12.days, origin_system: 'COGEN'},
                        {component_id: 5, customer_id: 5, global_customer_id: 10004, end_date: Time.now + 12.days, origin_system: 'NIB'}
                    ])
